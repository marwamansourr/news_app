class Constants{

static const String newsApiKey="73338688f6354c6499217100279bee88";
static String newsBaseUrl(String country)=>"https://newsapi.org/v2/top-headlines?country=$country&apiKey=$newsApiKey";

}