require 'spec_helper'


describe package('vim-enhanced') do
  it { should be_installed }
end

describe package('wget') do
  it { should be_installed }
end

describe package('tree') do
  it { should be_installed }
end

describe package('git') do
  it { should be_installed }
end

describe package('MySQL-python') do
  it { should be_installed }
end

describe package('mysql-community-server') do
  it { should be_installed }
end

describe service('mysqld') do
  it { should be_enabled }
  it { should be_running }
end

describe port(22) do
  it { should be_listening }
end

describe port(3306) do
  it { should be_listening }
end

