require File.expand_path("../../lib/knife_cookbook_readme/metadata", __FILE__)

module KnifeCookbookReadme
  describe "Metadata.from_file" do
    it "knows how to read metadata from metadata.rb" do
      file = double
      Chef::Cookbook::Metadata.any_instance.should_receive(:from_file).with(file)
      Metadata.from_file(file)
    end
  end
end
