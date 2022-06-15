module github.com/afdesk/trivy-module-demo

go 1.18

replace github.com/aquasecurity/trivy => ../trivy

require github.com/aquasecurity/trivy v0.0.0-00010101000000-000000000000

require (
	github.com/aquasecurity/fanal v0.0.0-20220614114854-29c7165f4672 // indirect
	github.com/aquasecurity/trivy-db v0.0.0-20220602091213-39d8a6798e07 // indirect
	github.com/caarlos0/env/v6 v6.9.3 // indirect
	github.com/google/go-containerregistry v0.7.1-0.20211214010025-a65b7844a475 // indirect
	github.com/josharian/intern v1.0.0 // indirect
	github.com/mailru/easyjson v0.7.6 // indirect
	golang.org/x/xerrors v0.0.0-20200804184101-5ec99f83aff1 // indirect
)
