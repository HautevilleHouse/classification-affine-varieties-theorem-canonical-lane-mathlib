import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClassificationAffineVarietiesTheoremCanonicalLaneLean.AffineVarietyStructure

namespace HautevilleHouse
namespace ClassificationAffineVarietiesTheoremCanonicalLaneLean

structure BlowupPackage (V: AffineVarietyPackage) where
  center: Subvariety V
  exceptionalDivisor: Subvariety (Blowup V center)
  birationalMorphism: MorphismPackage (Blowup V center) V
  resolutionOfSingularities: Prop

def BlowupClosed {V: AffineVarietyPackage} (B: BlowupPackage V): Prop :=
  B.resolutionOfSingularities

end ClassificationAffineVarietiesTheoremCanonicalLaneLean
end HautevilleHouse
