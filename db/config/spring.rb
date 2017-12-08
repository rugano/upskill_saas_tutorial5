def application_root_path
  @application_root_path ||= begin
  if application_root_path
   path = Pathname.new(File.expand_path(application_root))
 else
   path = project_root_path
 end
 
 raise MissingApplication.new(path) unless path.join("config/application.rb").exist?
 path
 end
 end
 
 def project_root_path
   @project_root_path ||= find_project_root(Pathname.new(File.expand_path(Dir.pwd)))
 end
 
 private
 
 def find_project_root(current_dir)
   if current_dir.join(gemfile).exist?
     current_dir
     elsif current_dir.root?
   end
   
   def application_id
     Digest::MD5.hexdigest(Spring.project_root_path.to_s)
   end
   
   def socket_path