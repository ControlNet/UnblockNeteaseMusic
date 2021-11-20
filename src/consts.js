// const DEFAULT_SOURCE = ['qq', 'kugou', 'migu', 'joox', 'pyncmd', 'kuwo'];
const DEFAULT_SOURCE = ['qq', 'kugou', 'joox', 'pyncmd', 'kuwo'];
const PROVIDERS = {
	qq: require('./provider/qq'),
	kugou: require('./provider/kugou'),
	kuwo: require('./provider/kuwo'),
	migu: require('./provider/migu'),
	joox: require('./provider/joox'),
	youtube: require('./provider/youtube'),
	ytdownload: require('./provider/yt-download'),
	youtubedl: require('./provider/youtube-dl'),
	bilibili: require('./provider/bilibili'),
	pyncmd: require('./provider/pyncmd'),
};

module.exports = {
	DEFAULT_SOURCE,
	PROVIDERS,
};
