require 'test/unit'

class TestFileTypePins < Test::Unit::TestCase

  def test_filecount
    Dir.foreach('./_pins/') do |item|
      next if item == '.' or item == '..'
        file_exist = File.fnmatch?('Newpulldown_location-rohit.json', item.downcase)
        print item
        assert_equal(false, file_exist)
      end
    end
  end
