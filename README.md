<h1>Terraform Projects</h1>
<h4>🚀 Praticando terraform com projetos </h4>

<h2>🚧 Status do projeto</h2>
<p>Em progresso</p>

<h2>🖥️ Pré-requisitos e como rodar a aplicação</h2>
<p>Antes de começar, você vai precisar ter instalado em sua máquina as seguintes ferramentas:
</br></br>
[Git] (https://git-scm.com) </br>
[AWS CLI](https://aws.amazon.com/cli/) </br>
[Terraform] (https://www.terraform.io/downloads.html)</br>
[WSL] (https://learn.microsoft.com/en-us/windows/wsl/install) ou um próprio sistema Linux 

 </p>
<h3>Rodando a Aplicação</h3>
<ul>
	<li>Clone esse repositório(git clone)</li>
	<li>Abra a pasta do projeto que deseja executar no terminal:
		<ul>
			<li><b>000-remote-backend</b>: Configuração do Backend Remoto (S3/DynamoDB)</li>
			<li><b>001-networking</b>: Infraestrutura de Rede (VPC, Subnets, NAT Gateway)</li>
			<li><b>002-eks-cluster</b>: Cluster Kubernetes (EKS) e Repositório ECR</li>
			<li><b>003-oidc</b>: Configuração de OIDC para GitHub Actions</li>
			<li><b>004-apps</b>: Aplicações de exemplo (Node.js)</li>
		</ul>
	</li>
	<li>Para projetos Terraform (000 a 003):
		<ul>
			<li>Crie um arquivo <b>vars/terraform.tfvars</b> seguindo o modelo do arquivo <b>vars/terraform.tfvars.example</b></li>
			<li>No arquivo <b>terraform.tfvars</b>, configure o <b>assume_role</b> com o ARN da role e a região da sua conta AWS</li>
			<li>No terminal da pasta do projeto, digite (terraform init)</li>
			<li>Digite (terraform plan -var-file=vars/terraform.tfvars)</li>
			<li>Digite (terraform apply -var-file=vars/terraform.tfvars)</li>
		</ul>
	</li>
	<li>Para as Aplicações (004-apps):
		<ul>
			<li>Entre na pasta da app (backend1 ou backend2)</li>
			<li>Certifique-se de ter o <b>Node.js</b> instalado</li>
			<li>Execute (npm install) e (npm start)</li>
		</ul>
	</li>
</ul>

<h2>🤖 Tecnologias Utilizadas</h2>
<div style="display: inline_block">
  <img src="https://img.shields.io/badge/Terraform-7B42BC?style=for-the-badge&logo=terraform&logoColor=white"/>
  <img src="https://img.shields.io/badge/AWS-232F3E?style=for-the-badge&logo=amazon-aws&logoColor=white"/>
  <img src="https://img.shields.io/badge/Kubernetes-326CE5?style=for-the-badge&logo=kubernetes&logoColor=white"/>
  <img src="https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white"/>
  <img src="https://img.shields.io/badge/Node.js-339933?style=for-the-badge&logo=nodedotjs&logoColor=white"/>
  <img src="https://img.shields.io/badge/GitHub%20Actions-2088FF?style=for-the-badge&logo=githubactions&logoColor=white"/>
</div>

<h2>🧑🏻‍ Autor</h2>
<p>Feito por João paulo</p>
<a href="https://www.linkedin.com/in/jo%C3%A3o-paulo-8b38b8254/">
	<img src="https://img.shields.io/badge/-João-blue?style=flat-square&logo=Linkedin&logoColor=white&link=https:https://www.linkedin.com/in/jo%C3%A3o-paulo-ferreira-neto-467880182/">
</a>
<a href="mailto:joaopauloneto3687@gmail.com">
	<img src="https://img.shields.io/badge/-joaopauloneto3687@gmail.com-c14438?style=flat-square&logo=Gmail&logoColor=white&link=mailto:joaopauloneto3687@gmail.com">
</a>
