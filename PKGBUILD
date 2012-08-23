# Maintainer: Andres Erbsen <andres.erbsen@gmail.com>
pkgname=hooks
pkgver=0.1.0
pkgrel=1
pkgdesc="Like per-user rc.d, for suspend and resume or anything else desireable"
arch=('any')
license=('GPL')
depends=(sh)
source=(runhooks.sh 68userhooks)
md5sums=('b10550003866c9b97f1177de70b5d822'
         'bb4ce9f3eab1ff0d866eb74a8b1f4a81')

build() {
  cd $srcdir
  install -d $pkgdir/usr/bin/
  install runhooks.sh $pkgdir/usr/bin/
  install -d $pkgdir/usr/lib/pm-utils/sleep.d/
  install 68userhooks $pkgdir/usr/lib/pm-utils/sleep.d/
}
