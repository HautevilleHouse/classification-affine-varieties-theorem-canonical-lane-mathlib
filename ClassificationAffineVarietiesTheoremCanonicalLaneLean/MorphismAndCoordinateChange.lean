import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClassificationAffineVarietiesTheoremCanonicalLaneLean.AffineVarietyStructure

namespace HautevilleHouse
namespace ClassificationAffineVarietiesTheoremCanonicalLaneLean

structure MorphismPackage (V W: AffineVarietyPackage) where
  underlyingMap: V.ambientSpace → W.ambientSpace
  polynomialRepresentation: Prop
  pullbackOnCoordinateRings: V.coordinateRing → W.coordinateRing
  isRegular: Prop
  isDominant: Prop

def MorphismClosed {V W: AffineVarietyPackage} (M: MorphismPackage V W): Prop :=
  M.isRegular ∧ M.isDominant

end ClassificationAffineVarietiesTheoremCanonicalLaneLean
end HautevilleHouse
