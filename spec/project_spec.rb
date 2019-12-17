require('rspec')
require('project')

# describe '#Album' do

  # before(:each)do
  # Album.clear()
  # end

#   describe("#save") do
#     it('saves an album')do
#     album = Album.new("Giant Steps", nil) # nil added as second argument
#     album.save()
#     album2 = Album.new("Blue", nil) # nil added as second argument
#     album2.save()
#     expect(Album.all).to(eq([album, album2]))
#   end
# end
#   describe ('.all') do
#     it("is empty")do
#     expect(Album.all()).to(eq([]))
#   end
# end
#
# describe('.clear') do
#     it("clears all albums") do
#       album = Album.new("Giant Steps", nil)
#       album.save()
#       album2 = Album.new("Blue", nil)
#       album2.save()
#       Album.clear()
#       expect(Album.all).to(eq([]))
#     end
#   end
#
#   describe('#update') do
#     it("updates an album by id") do
#       album = Album.new("Giant Steps", nil)
#       album.save()
#       album.update("A Love Supreme")
#       expect(album.name).to(eq("A Love Supreme"))
#     end
#   end

  describe('.search') do
    it("search an album by name") do
      album = Album.new("Giant Steps", nil, "1990", "blues", "bill")
      album.save()
      album2 = Album.new("test", nil, "1990", "blues", "bill")
      album2.save()
      expect(Album.search("Giant Steps")).to(eq("Giant Steps"))
    end
  end

  # describe('#delete') do
  #     it("deletes an album by id") do
  #       album = Album.new("Giant Steps", nil)
  #       album.save()
  #       album2 = Album.new("Blue", nil)
  #       album2.save()
  #       album.delete()
  #       expect(Album.all).to(eq([album2]))
  #     end
  #   end
  #
  # describe('#==') do
  #   it("is the same album if it has the same attributes as another album") do
  #     album = Album.new("Blue", nil)
  #     album2 = Album.new("Blue", nil)
  #     expect(album).to(eq(album2))
  #   end
  # end
# end
