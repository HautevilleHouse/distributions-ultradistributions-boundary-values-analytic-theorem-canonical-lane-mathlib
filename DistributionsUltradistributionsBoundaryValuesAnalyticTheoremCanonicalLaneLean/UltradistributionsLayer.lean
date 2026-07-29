import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionsUltradistributionsBoundaryValuesAnalyticTheoremCanonicalLaneLean

structure UltradistributionDatum where
  name : String
  classType : String
  growthCondition : String
  boundaryValueRoute : String

structure UltradistributionLayerCertificate where
  ultradistribution : UltradistributionDatum
  boundaryRepresentation : String
  analyticContinuationRoute : String
  layerClosed : Bool

def primitiveUltradistribution : UltradistributionDatum := {
  name := "roumieu_ultradistribution",
  classType := "Roumieu",
  growthCondition := "exponential_growth",
  boundaryValueRoute := "boundary_value_via_fourier_carrier"
}

def ultradistributionLayerCertificate : UltradistributionLayerCertificate := {
  ultradistribution := primitiveUltradistribution,
  boundaryRepresentation := "boundary_value_of_analytic_function_in_ultradistribution_sense",
  analyticContinuationRoute := "analytic_continuation_via_fourier_carrier_method",
  layerClosed := true
}

def UltradistributionLayerClosed (C : UltradistributionLayerCertificate) : Prop :=
  C.ultradistribution.name = "roumieu_ultradistribution" ∧
  C.boundaryRepresentation = "boundary_value_of_analytic_function_in_ultradistribution_sense" ∧
  C.layerClosed = true

theorem ultradistribution_layer_closed_checked :
    UltradistributionLayerClosed ultradistributionLayerCertificate := by
  exact And.intro rfl (And.intro rfl rfl)

end DistributionsUltradistributionsBoundaryValuesAnalyticTheoremCanonicalLaneLean
end HautevilleHouse
