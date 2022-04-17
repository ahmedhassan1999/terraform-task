module "network" {


source = "./network"
vpc_cidr= var.vpc_cidr
name= var.name
public-sub1_cidr = var.public-sub1_cidr
public-sub2_cidr = var.public-sub2_cidr
private-sub1_cidr = var.private-sub1_cidr
private-sub2_cidr = var.private-sub2_cidr
region = var.region 
zone1 = var.zone1
zone2 = var.zone2
ami=var.ami
   
}