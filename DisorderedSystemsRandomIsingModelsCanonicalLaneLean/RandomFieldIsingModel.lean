import DisorderedSystemsRandomIsingModelsCanonicalLaneLean.IsingTheoryPackage

/-!
# RandomFieldIsingModel Package
-/

namespace HautevilleHouse
namespace DisorderedSystemsRandomIsingModelsCanonicalLaneLean

structure RandomFieldIsingModelPackage (I : IsingTheoryPackage) where
  randomFieldVariance : Prop
  fieldDistribution : Prop
  magnetizationLaw : Prop
  correlationDecay : Prop

structure RandomFieldIsingModelEvidence (I : IsingTheoryPackage) (R : RandomFieldIsingModelPackage I) where
  randomFieldVarianceClosed : R.randomFieldVariance
  fieldDistributionClosed : R.fieldDistribution
  magnetizationLawClosed : R.magnetizationLaw
  correlationDecayClosed : R.correlationDecay

def RandomFieldIsingModelClosed (I : IsingTheoryPackage) (R : RandomFieldIsingModelPackage I) : Prop :=
  R.randomFieldVariance ∧ R.fieldDistribution ∧ R.magnetizationLaw ∧ R.correlationDecay

theorem random_field_ising_model_closed_from_evidence (I : IsingTheoryPackage) (R : RandomFieldIsingModelPackage I)
    (E : RandomFieldIsingModelEvidence I R) : RandomFieldIsingModelClosed I R := by
  exact And.intro E.randomFieldVarianceClosed
    (And.intro E.fieldDistributionClosed
      (And.intro E.magnetizationLawClosed E.correlationDecayClosed))

end DisorderedSystemsRandomIsingModelsCanonicalLaneLean
end HautevilleHouse