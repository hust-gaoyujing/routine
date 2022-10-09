

### BCNN软件实现





tiled_conv_auto:

```c
static void tiled_conv_auto(
        int batch_size, int in_dim, int in_channels,
        int out_channels, int out_dim,
        int stride, int input_dilation, int kernel_dilation, int padding, int kernel_dim,
        bool wrot180, bool trans_output_1203, bool trans_input_3120,
        bool trans_weight_1203, bool trans_weight_0132,

        const elem_t * input,
        const elem_t * weights,
        const acc_t * bias,
        elem_t * output,

        int act, acc_scale_t scale, size_t relu6_shift,
        int pool_size, int pool_stride, int pool_padding,

        enum tiled_matmul_type_t tiled_conv_type) {
		//pool_stride==0时，no_pool，此时pool_size=1,pool_stride=1,pool_padding=0;
    	
    	//pool_out_dim等于out_dim经过pool之后的尺寸，如果no_pool，则pool_out_dim=out_dim
    	const int pool_out_dim = (out_dim + 2*pool_padding - pool_size) / pool_stride + 1;
    	
    	//引入函数tiled_conv_total_spad_rows
		int args[] = {batch_size, pool_out_dim, pool_out_dim, out_channels, kernel_dim, kernel_dim, in_channels};
        int spad_rows = tiled_conv_total_spad_rows(false,stride, input_dilation, kernel_dilation, downsample, trans_weight_0132, trans_input_3120,
        args[0], args[1], args[2], args[3], args[4], args[5], args[6], pool_size, pool_stride);
    
    	//引入函数tiled_conv
        tiled_conv(
        batch_size, in_dim, in_channels,
        out_channels, out_dim,
        stride, input_dilation, kernel_dilation, padding, kernel_dim,
        wrot180, trans_output_1203, trans_input_3120,
        trans_weight_1203, trans_weight_0132,

        batches,
        orows, ocols, ochs,
        krows, kcols, kchs,

        input,
        weights,
        bias,
        output,

        act, scale, relu6_shift,
        pool_size, no_pool ? 0 : pool_stride, pool_padding,

        tiled_conv_type);
		}
```





tiled_conv_total_spad_rows: 计算一次卷积过程中spad/acc中的参数的行数。

```c
static int tiled_conv_total_spad_rows(bool acc,
        int stride,
        int input_dilation,
        int kernel_dilation,
        bool downsample,
        bool trans_weight_0132,
        bool trans_input_3120,
        int batches,
        int porows, int pocols, int ochs,
        int krows, int kcols, int kchs,
        int pool_size, int pool_stride) {
        ...
        
        const int A_rows = trans_input_3120 ?
        (batches_per_bank * ichs * (irows >> downsample) * (icols >> downsample)) :
        (in_channels_per_bank * batches * (irows >> downsample) * (icols >> downsample));

    	const int B_rows = trans_weight_0132 ?
      in_channels_per_bank * kcols * krows * ochs :
      out_channels_per_bank * kcols * krows * kchs;

    	const int C_rows = out_channels_per_bank * batches * orows * ocols;
		//如果是acc，则返回C_rows，即输出的rows；如果是spad,则返回A_rows+B_rows
   	 	return acc ? C_rows : A_rows + B_rows;    
        }
```



tiled_conv:

```c
static void tiled_conv(
        int batch_size, int in_dim, int in_channels,
        int out_channels, int out_dim,
        int stride, int input_dilation, int kernel_dilation, int padding, int kernel_dim,
        bool wrot180, bool trans_output_1203, bool trans_input_3120,
        bool trans_weight_1203, bool trans_weight_0132,

        int batches,
        int porows, int pocols, int pochs,
        int krows, int kcols, int kchs,

        const elem_t * input,
        const elem_t * weights,
        const acc_t * bias,
        elem_t * output,

        int act, acc_scale_t scale, size_t relu6_shift,
        int pool_size, int pool_stride, int pool_padding,

        enum tiled_matmul_type_t tiled_conv_type)
```

