import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationAffineVarietiesTheoremCanonicalLaneLean

structure CoordinateRing (k : Type) [Field k] where
  ring : Type
  algebraStructure : Algebra k ring
  finitelyGenerated : Prop
  reduced : Prop
  integralDomain : Prop
  dimension : Nat

structure CoordinateRingMorphism (A B : CoordinateRing k) where
  underlying : A.ring → B.ring
  kAlgebraHomomorphism : Prop
  kernelPrimeIdeal : Prop
  imageIntegralDomain : Prop

def CoordinateRingDimension (A : CoordinateRing k) : Nat :=
  A.dimension

end ClassificationAffineVarietiesTheoremCanonicalLaneLean
end HautevilleHouse