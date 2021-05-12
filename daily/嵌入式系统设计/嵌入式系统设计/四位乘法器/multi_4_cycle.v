module  multiplier_4(
	input 				clk,
	input				rst_n,
	input				start,
	input 	[3:0]		in_a,
	input 	[3:0]		in_b,
	
	output 	[7:0]		out_data,
	output				done
);
	
	reg		[2:0]		cnt;
	reg 	[7:0]		out_data_r;
	reg 	[6:0]		tmp_a;
	reg 	[3:0]		tmp_b;
	
	//generate flag of done and signal of cnt 
	assign done = cnt[2];
		always @(posedge clk or negedge rst_n)
		if(!rst_n) begin 
			cnt <= 3'b0;
		end 
		else if(start) begin 
			tmp_a <= {3'b0,in_a};
		    tmp_b <= in_b;
		end
		else begin 
			tmp_a <= tmp_a << 1;
		    tmp_b <= tmp_b >> 1;
		end 
	
	//store the input data a and b
	always @(posedge clk or negedge rst_n)
		if(!rst_n) begin 
			tmp_a <= 7'b0;
			tmp_b <= 4'b0;
		end 
		else if(start) begin 
			tmp_a <= {3'b0,in_a};
		    tmp_b <= in_b;
		end
		else begin 
			tmp_a <= tmp_a << 1;
		    tmp_b <= tmp_b >> 1;
		end 
			
	
	
	always @(posedge clk or negedge rst_n) 
		if(!rst_n) begin 
			cnt <= 2'b0;
			out_data_r <= 8'b0;
		end 
		else if(enable) begin
			if(cnt == 3'b100) begin 
				out_data_r <= 8'b0;
				cnt <= 3'b0;
			end 
			else begin 
				cnt <= cnt + 1;
				if(in_b[cnt]) 
					out_data_r <= out_data_r + (in_a << cnt);
				else 
					out_data_r <= out_data_r;
			end 
		end 
		else begin 
			cnt <= 3'b0;
			out_data_r <= 8'b0;
		end 

endmodule 