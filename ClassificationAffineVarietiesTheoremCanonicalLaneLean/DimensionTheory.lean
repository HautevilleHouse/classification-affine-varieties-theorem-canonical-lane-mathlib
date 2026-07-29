import HautevilleHouse.ClassificationAffineVarietiesTheoremCanonicalLaneLean.NormalizationTheorem

namespace HautevilleHouse
namespace ClassificationAffineVarietiesTheoremCanonicalLaneLean

structure DimensionTheoryPackage {R : CoordinateRingPackage} {S : PrimeSpectrumPackage R} {N : NormalizationTheoremPackage} where
  krullDimension : Nat
  transcendenceDegree : Nat
  dimensionEquality : Prop
  catenaryProperty : Prop

structure DimensionTheoryEvidence {R : CoordinateRingPackage} {S : PrimeSpectrumPackage R} {N : NormalizationTheoremPackage} (D : DimensionTheoryPackage) where
  dimensionEqualityClosed : D.dimensionEquality
  catenaryPropertyClosed : D.catenaryProperty

def DimensionTheoryClosed {R : CoordinateRingPackage} {S : PrimeSpectrumPackage R} {N : NormalizationTheoremPackage} (D : DimensionTheoryPackage) : Prop :=
  D.dimensionEquality ∧ D.catenaryProperty

theorem dimension_theory_closed_from_evidence {R : CoordinateRingPackage} {S : PrimeSpectrumPackage R} {N : NormalizationTheoremPackage} (D : DimensionTheoryPackage) (E : DimensionTheoryEvidence D) : DimensionTheoryClosed D := by
  exact And.intro E.dimensionEqualityClosed E.catenaryPropertyClosed

end ClassificationAffineVarietiesTheoremCanonicalLaneLean
end HautevilleHouse
