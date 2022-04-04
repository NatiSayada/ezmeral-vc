[controller]
%{ for ip in controller_ips ~}
${ip} ansible_ssh_user=adminuser ansible_ssh_private_key_file=${ssh_key}
%{ endfor ~}

[nfs]
%{ for ip in nfs_ips ~}
${ip} ansible_ssh_user=adminuser ansible_ssh_private_key_file=${ssh_key}
%{ endfor ~}

[workers]
%{ for ip in workers_ips ~}
${ip} ansible_ssh_user=adminuser ansible_ssh_private_key_file=${ssh_key}
%{ endfor ~}