import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClassificationAffineVarietiesTheoremCanonicalLaneLean.AffineVarietyStructure

namespace HautevilleHouse
namespace ClassificationAffineVarietiesTheoremCanonicalLaneLean

structure NormalizationPackage (V: AffineVarietyPackage) where
  normalVariety: AffineVarietyPackage
  normalizationMap: MorphismPackage normalVariety V
  finiteMorphism: Prop
  integralClosure: normalVariety.coordinateRing ≃ integralClosure V.coordinateRing

def NormalizationClosed {V: AffineVarietyPackage} (N: NormalizationPackage V): Prop :=
  N.finiteMorphism

end ClassificationAffineVarietiesTheoremCanonicalLaneLean
end HautevilleHouse
