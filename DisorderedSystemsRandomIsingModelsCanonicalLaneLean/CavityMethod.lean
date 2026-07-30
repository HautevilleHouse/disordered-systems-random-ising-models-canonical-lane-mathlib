import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DisorderedSystemsRandomIsingModelsCanonicalLaneLean

structure CavityMethodPackage (H : SpinGlassHamiltonian) where
  iterativeRecursion : Prop
  cavityFields : Type u
  localMagnetizations : Type v
  bethePeierlsApproximation : Prop
  messagePassingEquations : Prop

structure CavityMethodEvidence {H : SpinGlassHamiltonian}
    (C : CavityMethodPackage H) where
  iterativeRecursionClosed : C.iterativeRecursion
  bethePeierlsApproximationClosed : C.bethePeierlsApproximation
  messagePassingEquationsClosed : C.messagePassingEquations

def CavityMethodClosed {H : SpinGlassHamiltonian}
    (C : CavityMethodPackage H) : Prop :=
  C.iterativeRecursion ∧ C.bethePeierlsApproximation ∧ C.messagePassingEquations

theorem cavity_method_closed_from_evidence {H : SpinGlassHamiltonian}
    (C : CavityMethodPackage H) (E : CavityMethodEvidence C) : CavityMethodClosed C := by
  exact And.intro E.iterativeRecursionClosed
    (And.intro E.bethePeierlsApproximationClosed E.messagePassingEquationsClosed)

end DisorderedSystemsRandomIsingModelsCanonicalLaneLean
end HautevilleHouse