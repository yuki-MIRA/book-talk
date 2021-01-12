require 'rails_helper'

RSpec.describe Book, type: :model do
  before do
    @book = FactoryBot.build(:book)
  end

  describe '本投稿' do
    context '本投稿がうまくいくとき' do
      it 'name,text,genre_id,imageがあれば投稿できる' do
        expect(@book).to be_valid
      end
    end

    context '本投稿がうまくいかないとき' do
      it 'nameが空だと投稿できない' do
        @book.name = nil
        @book.valid?
        expect(@book.errors.full_messages).to include("Name can't be blank")
      end

      it 'textが空だと投稿できない' do
        @book.text = nil
        @book.valid?
        expect(@book.errors.full_messages).to include("Text can't be blank")
      end

      it 'genre_idが空(id:1)だと投稿できない' do
        @book.genre_id = 1
        @book.valid?
        expect(@book.errors.full_messages).to include('Genre Select')
      end

      it 'imageが空だと投稿できない' do
        @book.image = nil
        @book.valid?
        expect(@book.errors.full_messages).to include("Image can't be blank")
      end
    end
  end
end
