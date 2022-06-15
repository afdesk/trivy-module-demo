package main

import (
	"github.com/aquasecurity/trivy/pkg/module/api"
	"github.com/aquasecurity/trivy/pkg/module/serialize"
	"github.com/aquasecurity/trivy/pkg/module/wasm"
)

const (
	version = 1
	name    = "trivy-module-demo"
)

type customModule struct{}

func (customModule) Version() int {
	return version
}
func (customModule) Name() string {
	return name
}

func (customModule) PostScanSpec() serialize.PostScanSpec {
	return serialize.PostScanSpec{
		Action: api.ActionUpdate, // Update severity
		IDs:    []string{"CVE-2022-22965"},
	}

}

func (customModule) PostScan(r serialize.Results) (serialize.Results, error) {
	return r, nil

}

func main() {
	wasm.RegisterModule(customModule{})
}
