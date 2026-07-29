import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClassificationAffineVarietiesTheoremCanonicalLaneLean.AffineVarietyAtlas

namespace HautevilleHouse
namespace ClassificationAffineVarietiesTheoremCanonicalLaneLean

structure IrreducibleDecomposition {k : Type} [Field k] (A : AffineVarietyAtlas k) where
  components : List (Type)
  componentRings : List (Type)
  finiteDecomposition : Prop
  eachComponentIrreducible : Prop
  uniqueness : Prop
  finiteDecompositionClosed : finiteDecomposition
  eachComponentIrreducibleClosed : eachComponentIrreducible
  uniquenessClosed : uniqueness

structure IrreducibleDecompositionEvidence {k : Type} [Field k] {A : AffineVarietyAtlas k} (I : IrreducibleDecomposition A) where
  finiteDecompositionClosed : I.finiteDecomposition
  eachComponentIrreducibleClosed : I.eachComponentIrreducible
  uniquenessClosed : I.uniqueness

def IrreducibleDecompositionClosed {k : Type} [Field k] {A : AffineVarietyAtlas k} (I : IrreducibleDecomposition A) : Prop :=
  I.finiteDecomposition ∧ I.eachComponentIrreducible ∧ I.uniqueness

theorem irreducible_decomposition_closed_from_evidence {k : Type} [Field k] {A : AffineVarietyAtlas k} (I : IrreducibleDecomposition A) (E : IrreducibleDecompositionEvidence I) : IrreducibleDecompositionClosed I := by
  exact And.intro E.finiteDecompositionClosed (And.intro E.eachComponentIrreducibleClosed E.uniquenessClosed)

end ClassificationAffineVarietiesTheoremCanonicalLaneLean
end HautevilleHouse
