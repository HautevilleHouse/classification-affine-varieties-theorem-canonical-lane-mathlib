import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationAffineVarietiesTheoremCanonicalLaneLean

structure AffineVarietyPackage where
  baseField : Type
  coordinateRing : Type
  polynomialRing : Type
  vanishingIdeal : Type
  dimension : Nat
  smoothnessCondition : Prop

structure AffineVarietyEvidence (V : AffineVarietyPackage) where
  coordinateRingClosed : V.coordinateRing = V.polynomialRing / V.vanishingIdeal
  dimensionClosed : V.dimension = V.coordinateRing.transcendenceDegree
  smoothnessConditionClosed : V.smoothnessCondition

def AffineVarietyClosed (V : AffineVarietyPackage) : Prop :=
  V.coordinateRing = V.polynomialRing / V.vanishingIdeal ∧
  V.dimension = V.coordinateRing.transcendenceDegree ∧
  V.smoothnessCondition

theorem affine_variety_closed_from_evidence (V : AffineVarietyPackage) (E : AffineVarietyEvidence V) :
    AffineVarietyClosed V := by
  exact And.intro E.coordinateRingClosed (And.intro E.dimensionClosed E.smoothnessConditionClosed)

end ClassificationAffineVarietiesTheoremCanonicalLaneLean
end HautevilleHouse
