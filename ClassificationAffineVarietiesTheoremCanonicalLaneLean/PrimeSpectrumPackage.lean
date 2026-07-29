import HautevilleHouse.ClassificationAffineVarietiesTheoremCanonicalLaneLean.CoordinateRingPackage

namespace HautevilleHouse
namespace ClassificationAffineVarietiesTheoremCanonicalLaneLean

structure PrimeSpectrumPackage {R : CoordinateRingPackage} where
  primeIdeals : Type u
  zariskiTopology : Prop
  irreducibleComponents : Prop
  closedPointsIdentified : Prop

structure PrimeSpectrumEvidence {R : CoordinateRingPackage} (S : PrimeSpectrumPackage) where
  zariskiTopologyClosed : S.zariskiTopology
  irreducibleComponentsClosed : S.irreducibleComponents
  closedPointsIdentifiedClosed : S.closedPointsIdentified

def PrimeSpectrumClosed {R : CoordinateRingPackage} (S : PrimeSpectrumPackage) : Prop :=
  S.zariskiTopology ∧ S.irreducibleComponents ∧ S.closedPointsIdentified

theorem prime_spectrum_closed_from_evidence {R : CoordinateRingPackage} (S : PrimeSpectrumPackage) (E : PrimeSpectrumEvidence S) : PrimeSpectrumClosed S := by
  exact And.intro E.zariskiTopologyClosed (And.intro E.irreducibleComponentsClosed E.closedPointsIdentifiedClosed)

end ClassificationAffineVarietiesTheoremCanonicalLaneLean
end HautevilleHouse
