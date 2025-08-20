# LocalStack 환경을 위한 Provider 설정
provider "aws" {
  region                      = "ap-northeast-2"
  # LocalStack은 테스트용 더미 자격 증명을 사용합니다.
  access_key                  = "test"
  secret_key                  = "test"

  # 실제 AWS API가 아닌 LocalStack 엔드포인트를 바라보도록 설정합니다.
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true

  endpoints {
    ec2 = "http://localhost:4566"
  }
}
