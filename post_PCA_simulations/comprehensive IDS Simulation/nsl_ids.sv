module nsl_ids
//************************************* PARAMETER DECLARATIONS ***************************************************************************************
    #(
        ///////////////////////////////////////////////////////////////////////
        // Global Parameter configuration
        ///////////////////////////////////////////////////////////////////////

        // Number of Principal Components
        parameter PC_NUM = 32,
        
        // Number of Major Principal Components
        parameter MAJ_PC_NUM = 10,
        
        // Number of minor Principal Components
        parameter MIN_PC_NUM = 5,

        // Floating point size
        parameter FP_SIZE = 64
    )
    
//************************************* PORT DECLARATIONS ***************************************************************************************
    (
       // input  wire                  clk, reset,
        input  real sorted_eigen_values [0:PC_NUM -1],             // Defining an array made up of (PC_NUM) elements each of (FP_SIZE) bits
        input  real sorted_eigen_vectors [0:PC_NUM-1][0:PC_NUM-1], // Defining an array made up of (PC_NUM * PC_NUM) elements each of (FP_SIZE) bits
        input  real input_samples [0:PC_NUM -1], // Defining an array made up of (PC_NUM) elements each of (FP_SIZE) bits
        output real ids_out
    );
    
  //************************************* SIGNAL DECLARATIONS ***************************************************************************************
    real maj_pc_score;
    real min_pc_score;  
    real maj_comp_eigen_values [0:MAJ_PC_NUM-1]; // Defining an array made up of (MAJ_PC_NUM) elements each of (FP_SIZE) bits
    real min_comp_eigen_values [0:MIN_PC_NUM-1]; // Defining an array made up of (MIN_PC_NUM) elements each of (FP_SIZE) bits
    
    real maj_comp_eigen_vectors [0:MAJ_PC_NUM-1][0:PC_NUM-1]; // Defining anarray made up of (MAJ_PC_NUM * MAJ_PC_NUM) elements each of (FP_SIZE) bits
    real min_comp_eigen_vectors [0:MIN_PC_NUM-1][0:PC_NUM-1]; // Defining anarray made up of (MAJ_PC_NUM * MAJ_PC_NUM) elements each of (FP_SIZE) bits
    
    real maj_pc_values [0:MAJ_PC_NUM-1];
    real min_pc_values [0:MIN_PC_NUM-1];
    

//************************************* INSTANTIATING EXTERNAL MODULES ***************************************************************************************	
 maj_dot_p_array maj_dot_p_array_inst1( 
   // .clk(clk), .reset(reset),
   .common_vector(input_samples),
   .long_vector(maj_comp_eigen_vectors),
   .out_vector(maj_pc_values)
 );
 
  min_dot_p_array min_dot_p_array_inst1(
   //.clk(clk), .reset(reset),
   .common_vector(input_samples),
   .long_vector(min_comp_eigen_vectors),
   .out_vector(min_pc_values)
 );
 
 maj_pca_score maj_pca_score_inst1(
    //.clk(clk), .reset(reset),
    .maj_eigen_values(maj_comp_eigen_values),
    .maj_principal_comps(maj_pc_values),
    .maj_pc_score(maj_pc_score)
 );
 
  min_pca_score min_pca_score_inst1(
    //.clk(clk), .reset(reset),
    .min_eigen_values(min_comp_eigen_values),
    .min_principal_comps(min_pc_values),
    .min_pc_score(min_pc_score)
 );
 
 threshold_compare threshold_compare_inst1(
     //.clk(clk), .reset(reset),
     .maj_pc_score(maj_pc_score),
     .min_pc_score(min_pc_score),
     .out_d(ids_out)
 );
 
//************************************* PORT ASSIGNMENTS ***************************************************************************************	
    assign maj_comp_eigen_values  = sorted_eigen_values[0:MAJ_PC_NUM-1];
//    assign maj_comp_eigen_vectors = sorted_eigen_vectors[0:MAJ_PC_NUM-1][0:PC_NUM-1];
    assign maj_comp_eigen_vectors = sorted_eigen_vectors[0:MAJ_PC_NUM-1];
    
    assign min_comp_eigen_values  = sorted_eigen_values[0:MIN_PC_NUM-1];
//    assign min_comp_eigen_vectors = sorted_eigen_vectors[0:MIN_PC_NUM-1][0:PC_NUM-1];
    assign min_comp_eigen_vectors = sorted_eigen_vectors[0:MIN_PC_NUM-1];
    
endmodule

