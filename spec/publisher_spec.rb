require 'spec_helper'

describe Publisher do
  context "on publish!" do
    before do
      Publisher.publish!('abc', '123', 'mybucket', 'spec/sample/', {})
    end
    
    it "publish all files" do
      AWS::S3::Client.any_instance.stubs(:put_object).returns(true)
      AWS::S3::S3Object.any_instance.expects(:write)
    end
  end
end