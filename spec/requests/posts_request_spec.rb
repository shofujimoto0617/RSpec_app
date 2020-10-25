require 'rails_helper'

RSpec.describe "Posts", type: :request do
  describe '新規投稿ページ' do
    context "新規投稿ページが正しく表示される" do
      before do
      	get posts_new_path
      end
      it 'リクエストは200 OKとなること' do
      	expect(response.status).to eq 200
      end
      it 'タイトルが正しく表示されていること' do
      	expect(response.body).to include("新規投稿")
      end
    end
  end

  describe '投稿一覧ページ' do
  	context "投稿一覧ページが正しく表示される" do
  	  before do
  	  	get posts_index_path
  	  end
  	  it 'リクエストは200 OKとなること' do
  	  	expect(response.status).to eq 200
  	  end
  	  it 'タイトルが正しく表示されること' do
  	  	expect(response.body).to include("投稿一覧")
  	  end
  	end
  end

  describe '投稿詳細ページ' do
  	context "投稿一覧ページが正しく表示される" do
  	  before do
  	  	get posts_show_path
  	  end
  	  it 'リクエストは200 OKとなること' do
  	  	expect(response.status).to eq 200
  	  end
  	  it 'タイトルが正しく表示されること' do
  	  	expect(response.body).to include("投稿詳細")
  	  end
  	end
  end
end
