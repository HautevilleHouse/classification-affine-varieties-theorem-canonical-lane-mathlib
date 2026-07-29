import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClassificationAffineVarietiesTheoremCanonicalLaneLean.AffineVarietyStructure

namespace HautevilleHouse
namespace ClassificationAffineVarietiesTheoremCanonicalLaneLean

structure TangentSpacePackage (V: AffineVarietyPackage) (x: V.smoothLocus) where
  tangentVectors: Type u
  dimension: Nat
  embeddedInAmbient: V.ambientSpace → V.ambientSpace
  zariskiTangentSpace: Type v
  dimensionMatches: dimension = V.dimension

def TangentSpaceClosed {V: AffineVarietyPackage} {x: V.smoothLocus} (T: TangentSpacePackage V x): Prop :=
  T.dimensionMatches

end ClassificationAffineVarietiesTheoremCanonicalLaneLean
end HautevilleHouse
