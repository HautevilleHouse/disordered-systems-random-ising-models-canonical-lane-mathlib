import DisorderedSystemsRandomIsingModelsCanonicalLaneLean.CanonicalLaneMathlibCore

/-!
# IsingTheoryPackage
-/

namespace HautevilleHouse
namespace DisorderedSystemsRandomIsingModelsCanonicalLaneLean

structure IsingTheoryPackage where
  spinHalf : Type u
  latticeDimension : Nat
  interactionStrength : Type v
  disorderParameter : Type w
  spinHalfDefined : Prop
  latticeDimensionSet : Prop
  interactionStrengthFinite : Prop
  disorderParameterFinite : Prop

structure IsingTheoryEvidence (I : IsingTheoryPackage) where
  spinHalfDefinedClosed : I.spinHalfDefined
  latticeDimensionSetClosed : I.latticeDimensionSet
  interactionStrengthFiniteClosed : I.interactionStrengthFinite
  disorderParameterFiniteClosed : I.disorderParameterFinite

def IsingTheoryClosed (I : IsingTheoryPackage) : Prop :=
  I.spinHalfDefined ∧ I.latticeDimensionSet ∧ I.interactionStrengthFinite ∧ I.disorderParameterFinite

theorem ising_theory_closed_from_evidence (I : IsingTheoryPackage) (E : IsingTheoryEvidence I) :
    IsingTheoryClosed I := by
  exact And.intro E.spinHalfDefinedClosed
    (And.intro E.latticeDimensionSetClosed
      (And.intro E.interactionStrengthFiniteClosed E.disorderParameterFiniteClosed))

end DisorderedSystemsRandomIsingModelsCanonicalLaneLean
end HautevilleHouse