[controller]
%{ for ip in controller_ips ~}
${ip}
%{ endfor ~}

[gateway]
%{ for ip in gw_ips ~}
${ip}
%{ endfor ~}

[workers]
%{ for ip in workers_ips ~}
${ip}
%{ endfor ~}

[all:vars]
ansible_ssh_user=adminuser
ansible_ssh_private_key_file=${ssh_key}