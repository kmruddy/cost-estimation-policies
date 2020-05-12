module "aws-functions" {
    source = "./aws-costing.sentinel"
}

policy "aws-costing" {
    enforcement_level = "advisory"
}
