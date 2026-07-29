import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationAffineVarietiesTheoremCanonicalLaneLean

structure ResolutionOfSingularities where
  singularVariety : AffineVarietyPackage
  resolution : AffineVarietyPackage
  birationalMorphism : MorphismSheafPackage resolution singularVariety
  smoothnessCondition : resolution.smoothnessCondition
  exceptionalDivisor : Prop

structure ResolutionEvidence (R : ResolutionOfSingularities) where
  birationalMorphismClosed : R.birationalMorphism.sheafCompatibility
  smoothnessConditionClosed : R.smoothnessCondition
  exceptionalDivisorClosed : R.exceptionalDivisor

def ResolutionClosed (R : ResolutionOfSingularities) : Prop :=
  R.birationalMorphism.sheafCompatibility ∧ R.smoothnessCondition ∧ R.exceptionalDivisor

theorem resolution_closed_from_evidence (R : ResolutionOfSingularities) (E : ResolutionEvidence R) :
    ResolutionClosed R := by
  exact And.intro E.birationalMorphismClosed (And.intro E.smoothnessConditionClosed E.exceptionalDivisorClosed)

end ClassificationAffineVarietiesTheoremCanonicalLaneLean
end HautevilleHouse
