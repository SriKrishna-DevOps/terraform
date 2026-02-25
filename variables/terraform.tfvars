 sg_name="allow_all_traffic_from_tfvars"



#  precedense of varibales 
#  1.cmd
#  2.tf.vars
#  3.env 
#  export TF_VARS_sg_name="allow_all_traffic_from_env"  ; you can also remove the envi values through the unset TF_VARS_sg_name
#  4.default/varibales.tf
#  terraform plan -var="sg_name=allow_all_traffic_cmd""