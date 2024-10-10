# Proxmox Packer

Este projeto é usado para criar imagens de máquinas virtuais (VMs) para o Proxmox usando o Packer. As imagens criadas são compatíveis com o cloud-init, o que permite que você configure VMs no momento da criação usando arquivos de configuração do cloud-init.

## Pré-requisitos

- [Packer](https://www.packer.io/downloads)
- [Ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html)
- [Proxmox](https://www.proxmox.com/en/downloads)

Antes de executar o Packer, você precisará configurar algumas variáveis no arquivo `variables.pkrvars.hcl`. Este arquivo contém várias variáveis que o Packer usa para criar a imagem. As variáveis que você precisa configurar incluem:

- `proxmox_url`: O URL do seu servidor Proxmox.
- `proxmox_user`: O nome de usuário para se conectar ao Proxmox.
- `proxmox_password`: A senha para se conectar ao Proxmox.
- `template_name`: O nome do template que será criado.


## Como usar

1. Clone este repositório para o seu local de trabalho.
2. Navegue até o diretório do projeto.
3. Execute o playbook Ansible para verificar e remover o template existente (se necessário):

    ```bash
    ansible-playbook playbook.yml
    ```

4. Execute o Packer para criar a nova imagem:

    ```bash
    packer build packer.pkr.hcl
    ```

5. No Proxmox, você pode agora criar uma nova VM usando a imagem criada. Durante a criação da VM, você pode fornecer um arquivo de configuração do cloud-init para configurar a VM.

## Contribuindo

Contribuições para este projeto são bem-vindas. Por favor, abra um problema ou uma solicitação de pull.

## Licença

Este projeto está licenciado sob a licença MIT. Veja o arquivo LICENSE para mais detalhes.