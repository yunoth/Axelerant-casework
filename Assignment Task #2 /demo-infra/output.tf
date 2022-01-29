output "alb_cname" {
  value = module.alb.lb_dns_name
}

output "rds_masterpassword" {
  value = module.drupal-db.db_master_password
}
//output "ansible_command" {
//  value = "ansible-playbook -i playbook/ec2.py --limit 'tag_env_demo:&tag_service_apache' -u centos --key-file=/tmp/demo.pem playbook/apache.yml -e 'apache_state=started'"
//}