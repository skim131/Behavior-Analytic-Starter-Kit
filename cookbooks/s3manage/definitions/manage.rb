define :s3manage, :bucket => nil, :s3file => nil, :action => :upload do

  unless [ "upload", "download" ].include?("#{params[:action]}")
    raise ArgumentError, "Unsupported action: #{params[:action]}"
  end

  unless ::File.exists?("#{params[:name]}")
    raise ArgumentError, "No such file or directory: #{params[:name]}"    
  end

  case params[:action]
    when "upload"    
      ruby_block "s3upload" do
        block do
          require 'rubygems'
          require 'yaml'
          require 'aws-sdk'

          s3 = AWS::S3.new(
            :access_key_id     => "#{node[:s3manage][:access_key_id]}",
            :secret_access_key => "#{node[:s3manage][:secret_access_key]}")

          base_name = File.basename("#{params[:name]}")

          bucket = s3.buckets["#{params[:bucket]}"]
          file = bucket.objects["#{base_name}"]
          file.write(:file => params[:name])
        end
      end
    when "download"
      ruby_block "s3download" do
        block do
          require 'rubygems'
          require 'yaml'
          require 'aws-sdk'

          s3 = AWS::S3.new(
            :access_key_id     => "#{node[:s3manage][:access_key_id]}",
            :secret_access_key => "#{node[:s3manage][:secret_access_key]}")

          base_name = File.basename("#{params[:name]}")

          bucket = s3.buckets["#{params[:bucket]}"]
          file = bucket.objects["#{params[:s3file]}"]     

          File.open("#{params[:name]}/#{params[:s3file]}", 'wb') do |local_file|
            file.read do |chunk|
               local_file.write(chunk)
            end
          end 

        end
      end
  end
end

