import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationAffineVarietiesTheoremCanonicalLaneLean

structure NullstellensatzPackage (k : Type) [AlgebraicallyClosedField k] where
  idealVarietyCorrespondence : Prop
  radicalIdealProperty : Prop
  maximalIdealCorrespondence : Prop
  coordinateRingDescription : Prop

structure NullstellensatzEvidence (N : NullstellensatzPackage k) where
  idealVarietyCorrespondenceClosed : N.idealVarietyCorrespondence
  radicalIdealPropertyClosed : N.radicalIdealProperty
  maximalIdealCorrespondenceClosed : N.maximalIdealCorrespondence
  coordinateRingDescriptionClosed : N.coordinateRingDescription

def NullstellensatzClosed (N : NullstellensatzPackage k) : Prop :=
  N.idealVarietyCorrespondence ∧ N.radicalIdealProperty ∧
  N.maximalIdealCorrespondence ∧ N.coordinateRingDescription

theorem nullstellensatz_closed_from_evidence (N : NullstellensatzPackage k) (E : NullstellensatzEvidence N) : NullstellensatzClosed N := by
  exact And.intro E.idealVarietyCorrespondenceClosed
    (And.intro E.radicalIdealPropertyClosed
      (And.intro E.maximalIdealCorrespondenceClosed E.coordinateRingDescriptionClosed))

end ClassificationAffineVarietiesTheoremCanonicalLaneLean
end HautevilleHouse