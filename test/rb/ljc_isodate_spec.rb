# frozen_string_literal: true

load 'bin/ljc-isodate'

describe 'ljc-isodate' do
  example 'smoke test' do
    expect { main([]) }.to output.to_stdout
  end
end
