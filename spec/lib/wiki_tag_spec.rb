# -*- encoding: utf-8 -*-
require 'spec_helper'

describe WikiTag do
  # let(:sample){ Sample.new }

  # describe "段落をつけて返す" do
  #   context "1行ブランク" do
  #     it {should eq "aa aa"}
  #   end
  #   it { should eq "Hello TDD BootCamp!" }
  # end
  
  describe "フォント整形" do
    context "italicに整形" do
      subject { WikiTag.new }
      it { subject.change_italic('_aaa_').should eq "<i>aaa</i>" }
      # it { subject.change_italic('_0aAあア漢字@_').should eq "<i>0aAあア漢字@</i>" }
    end
  end
end
