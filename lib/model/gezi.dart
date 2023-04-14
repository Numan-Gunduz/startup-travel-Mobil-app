class Gezi {
  final String _geziYeri;
  final String _geziSehri;
  final String _geziDetayi;
  final String _geziKucukResim;
  final String _geziBuyukresim;
  
  get geziYeri => this._geziYeri;

  get geziSehri => this._geziSehri;

  get geziDetayi => this._geziDetayi;

  get geziKucukResim => this._geziKucukResim;
  
  get geziBuyukresim => this._geziBuyukresim;

  Gezi(this._geziYeri, this._geziSehri, this._geziDetayi, this._geziKucukResim,
      this._geziBuyukresim);

      
  @override
  String toString() {
    return '$_geziYeri---$_geziBuyukresim-';
  }
}