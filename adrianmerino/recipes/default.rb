docker_service 'default' do
  action [:create, :start]
end

# Pull latest image
docker_image 'prestashop/prestashop' do
  tag 'latest'
  action :pull
end

# Run Image
docker_container 'prestashop' do
  repo 'prestashop/prestashop'
  action :run
end
