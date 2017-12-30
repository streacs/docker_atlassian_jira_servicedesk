require 'spec_helper'
require 'serverspec'

describe file('/home/jira') do
  it { should be_directory }
  it { should be_owned_by 'jira' }
  it { should be_grouped_into 'jira' }
end

describe file('/opt/atlassian/jira') do
  it { should be_directory }
  it { should be_owned_by 'jira' }
  it { should be_grouped_into 'jira' }
end

describe file('/var/opt/atlassian/application-data/jira') do
  it { should be_directory }
  it { should be_owned_by 'jira' }
  it { should be_grouped_into 'jira' }
end