import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationAffineVarietiesTheoremCanonicalLaneLean

structure MinimalModelProgram where
  variety : AffineVarietyPackage
  minimalModel : AffineVarietyPackage
  birationalMap : MorphismSheafPackage variety minimalModel
  canonicalBundle : Prop
  nefCondition : Prop
  terminationCondition : Prop

structure MinimalModelEvidence (P : MinimalModelProgram) where
  birationalMapClosed : P.birationalMap.sheafCompatibility
  canonicalBundleClosed : P.canonicalBundle
  nefConditionClosed : P.nefCondition
  terminationConditionClosed : P.terminationCondition

def MinimalModelClosed (P : MinimalModelProgram) : Prop :=
  P.birationalMap.sheafCompatibility ∧ P.canonicalBundle ∧ P.nefCondition ∧ P.terminationCondition

theorem minimal_model_closed_from_evidence (P : MinimalModelProgram) (E : MinimalModelEvidence P) :
    MinimalModelClosed P := by
  exact And.intro E.birationalMapClosed (And.intro E.canonicalBundleClosed (And.intro E.nefConditionClosed E.terminationConditionClosed))

end ClassificationAffineVarietiesTheoremCanonicalLaneLean
end HautevilleHouse
