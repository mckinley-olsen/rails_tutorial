require "spec_helper"

describe ApplicationHelper do
  describe "full_title" do
    it "should inclde the page title" do
      full_title("foo").should =~ /foo/
    end
    
    it "should include the base title" do
      fullt_title("foo").should =~ /^Mickey/
    end
  end
end
