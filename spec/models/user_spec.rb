require 'rails_helper'
RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
    context '新規登録がうまくいくとき' do
      it 'nicknameとemail,passwordとpassword_confirmationが存在すれば登録できる' do
        expect(@user).to be_valid
      end
    end

    context '新規登録がうまくいかないとき' do
      it 'nicknameが空だと登録できない' do
        @user.nickname = nil
        @user.valid?
        expect(@user.errors.full_messages).to include("Nickname can't be blank")
      end

      it 'emailが空だと登録できない' do
        @user.email = nil
        @user.valid?
        expect(@user.errors.full_messages).to include("Email can't be blank")
      end

      it '重複したemailが存在する場合登録できない' do
        @user.save
        another_user = FactoryBot.build(:user)
        another_user.email = @user.email
        another_user.valid?
        expect(another_user.errors.full_messages).to include('Email has already been taken')
      end

      it 'passwordが空だと登録できない' do
        @user.password = nil
        @user.valid?
        expect(@user.errors.full_messages).to include("Password can't be blank")
      end

      it 'passwordが5文字以下だと登録できない' do
        @user.password = "a1234"
        @user.valid?
        expect(@user.errors.full_messages).to include("Password is too short (minimum is 6 characters)")
      end

      it 'passwordが英字のみだと登録できない' do
        @user.password = "aaaaaa"
        @user.valid?
        expect(@user.errors.full_messages).to include("Password には英字と数字の両方を含める必要があります")
      end

      it 'passwordが数字のみだと登録できない' do
        @user.password = 111111
        @user.valid?
        expect(@user.errors.full_messages).to include("Password には英字と数字の両方を含める必要があります")
      end

      it 'passwordが存在しても、password_confirmationが空だと登録できない' do
        @user.password = "a12345"
        @user.password_confirmation = nil
        @user.valid?
        expect(@user.errors.full_messages).to include
      end

      it 'passwordが存在しても、password_confirmationが同じでなければ登録できない' do
        @user.password = "a11111"
        @user.password_confirmation = "b22222"
        expect(@user.errors.full_messages).to include
      end

      it 'passwordが全角入力だと登録できない' do
        @user.password = 'a１２３４５'
        @user.valid?
        expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
      end

    end
  end
end
