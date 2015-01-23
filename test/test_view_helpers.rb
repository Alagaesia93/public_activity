require 'test_helper'

describe 'ViewHelpers Rendering' do
  include PublicActivity::ViewHelpers

  # is this a proper test?
  it 'provides render_activity helper' do
    activity = mock('activity')
    activity.stubs(:is_a?).with(PublicActivity::Activity).returns(true)
    activity.expects(:render).with(self, {})
    render_activity(activity)
  end

  it 'handles multiple activities' do
    activity = mock('activity')
    activity.expects(:render).with(self, {})
    render_activities([activity])
  end
end
