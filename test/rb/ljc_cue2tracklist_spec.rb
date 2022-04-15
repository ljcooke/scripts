# frozen_string_literal: true

load 'bin/ljc-cue2tracklist'

describe 'ljc-cue2tracklist' do
  example 'smoke test' do
    expect { CueFile.new }.not_to raise_error
  end
end
