# Demo Vault for Ansible and Terraform

Репозиторий с демо-кодом для вебинара "Использование HashiCorp Vault для хранения секретов инфраструктуры"

## Пререквизиты

* [Ansible](https://docs.ansible.com/ansible/latest/installation_guide/index.html)
* [Terraform](https://www.terraform.io/downloads)
* [HashiCorp Vault](https://www.vaultproject.io/downloads)

## Как запустить Vault в dev-режиме

`vault server -dev -dev-root-token-id="demo"`

## Как запустить демо-код

### Ansible

```bash
cd ansible
ansible-galaxy install -r requirements.yml
ansible-playbook playbook.yml
```

### Terraform

```bash
cd terraform
terraform init
terraform plan
terraform apply
```

## Полезные ссылки

* [Документация по Vault](https://www.vaultproject.io/docs)
* [Роль для установки Vault](https://github.com/ansible-community/ansible-vault)
* [Коллекция Ansible `community.hashi_vault`](https://docs.ansible.com/ansible/latest/collections/community/hashi_vault/)
* [Роль для записи в Vault](https://github.com/TerryHowe/ansible-modules-hashivault)
* [Vault provider для Terraform](https://registry.terraform.io/providers/hashicorp/vault/latest/docs)
