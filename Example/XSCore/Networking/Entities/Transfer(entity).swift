//
//  Transfer(entity).swift
//  XSCore_Example
//
//  Created by khayal on 07.07.23.
//  Copyright © 2023 CocoaPods. All rights reserved.
//

import XSCore

open class Transfer: Object {
    @Backend() public var type: `Type`
    @Backend() public var currencyFrom: Currency
    @Backend() public var currencyTo: Currency
    @Backend() public var detailId: String
    @Backend() public var detail1: String
    @Backend() public var detail2: String
    @Backend() public var exchangeType: String
    @Backend() public var incomeAmount: Rate?
    @Backend() public var rate: Rate?
    @Backend() public var expenseAmount: Double
    @Backend() public var flexReferenceNumber: String
    @Backend() public var paymentId: Int
    @Backend() public var id: Int
    @Backend() public var amount: Double
    @Backend() public var createdAt: String
    @Backend() public var updatedAt: String
    @Backend() public var status: Status
    @Backend() public var currency: Currency
    @Backend() public var commissionAmount: Double
    @Backend() public var commissionCurrency: Currency
    @Backend() public var orderFileId: String
    @Backend() public var attachments: [Attachment]
    @Backend() public var payVatPayment: Bool
    @Backend() public var vatAmount: Double
    @Backend() public var urgent: Bool
    @Backend() public var referenceId: String
    @Backend() public var templateName: String
    @Backend() public var isOrderFileExist: Bool
    @Backend() public var accountFrom: String
    @Backend() public var accountTo: String
    @Backend() public var beneficiaryName: String
    @Backend() public var title: String
    @Backend() public var email: String
    @Backend() public var vatDescription: String
    @Backend() public var bulkPaymentId: Int
    @Backend() public var beneficiaryTaxId: String
    @Backend() public var bankCode: String
    @Backend() public var bankName: String
    @Backend() public var bankAddress: String
    @Backend() public var bankAccount: String
    @Backend() public var budgetLevelCode: String
    @Backend() public var budgetClassificationCode: String
    @Backend() public var moscowPayment: Bool
    @Backend() public var beneficiaryAddress: String
    @Backend() public var senderIban: String
    @Backend() public var receiverIban: String
    @Backend() public var beneficiarySwiftCode: String
    @Backend() public var intermediarySwiftCode: String
    @Backend() public var beneficiaryBranchDetail: String
    @Backend() public var intermediaryBranchDetail: String
    @Backend() public var beneficiaryKppCode: String
    @Backend() public var beneficiaryVoCode: String
    @Backend() public var pdf: String
    @Backend() public var accessType: Access
    @Backend() public var files: [Attachment]
    @Backend() public var beneficiarySwiftInfo: [Swift]
    @Backend() public var intermediarySwiftInfo: [Swift]
}

extension Transfer {
    
    public enum Access: String, Codable, Zero {
        
        case Public  = "PUBLIC"
        case Private = "PRIVATE"
        
        public static var zero: Access {
            .Public
        }
    }
    
    public enum Status: String, Codable, Zero {
        
        case deleted    = "DELETED"
        case completed  = "COMPLETED"
        case rejected   = "REJECTED"
        case processing = "PROCESSING"
        case created    = "CREATED"
        case w_autorize = "WAITING_AUTHORIZE"
        case failed     = "FAILED"
        case template   = "TEMPLATE"
        case t_waiting  = "TREASURY_WAITING"
        case t_approved = "TREASURY_APPROVED"
        case t_rejected = "TREASURY_REJECTED"
        case p_approval = "PENDING_APPROVAL"
        case r_by_bank  = "REJECTED_BY_BANK"
        case reversed   = "REVERSED"
        case b_rejected = "BRANCH_REJECTED"
        case hold       = "HOLD"
        case a_expired  = "APPROVAL_EXPIRED"
        case c_d_expire = "CONFIRMATION_DATE_EXPIRED"
        
        public var status: String {
            switch self {
            case .p_approval:
                return "Təsdiq Gözləyir"
            default:
                return ""
            }
        }
        
        public static var zero: Status {
            .hold
        }
    
        public var text: String {
            switch self {
            case .created:     return " Yaradılıb "
            case .completed:   return " Təsdiqlənib "
            case .t_approved:  return " Xəzinədarlıq təsdiqləyib "
            case .rejected:    return " İmtina edilib "
            case .failed:      return " Xəta "
            case .t_rejected:  return " Xəzinədarlıq imtina edib "
            case .r_by_bank:   return " Bank imtina edib "
            case .reversed:    return " Geri qaytarılıb "
            case .b_rejected:  return " Filial imtina edib "
            case .w_autorize:  return " Avtorizasiya üçün gözləmədə "
            case .p_approval:  return " İmzalanmalı "
            case .processing:  return " Prosesdə "
            case .t_waiting:   return " Xəzinədarlıqda gözləmədə "
            case .hold:        return " Gözləmədə "
            case .c_d_expire:  return " Təsdiq tarixi bitib"
            case .a_expired :  return " Təsdiq vaxtı bitib "
            case _:            return ""
            }
        }
        
    }
    
    public enum `Type`: String, Codable, Zero  {
        
        case unknown
        case domestic        =   "DOMESTIC"
        case tax             =   "TAX"
        case `internal`      =   "INTERNAL"
        case own             =   "OWN_ACCOUNTS"
        case salary          =   "SALARY"
        case international   =   "INTERNATIONAL"
        case vat             =   "VAT"
        case exchange        =   "EXCHANGE"
        case sexchange       =   "STANDARD_EXCHANGE"
        case ibtf            =   "IBTF"
        case i_exchange      =   "INDIVIDUAL_EXCHANGE"
        case ibmg            =   "IBMG"
        case ips             =   "IPS_PAYMENT"
        
        public var prefix: String {
            switch self {
            case .own:
                return "own"
            case _:
                return rawValue.lowercased()
            }
        }
        
        public var title: String {
            switch self {
            case .own:               return "Öz hesablarım arasında"
            case .internal:          return "Bankdaxili köçürmə"
            case .domestic:          return "Ölkə daxili köçürmə"
            case .ibmg:              return "Ölkə daxili (xarici valyuta)"
            case .ibtf:              return "Moskva Köçürməsi"
            case .international:     return "SWIFT (Beynəlxalq)"
            case .tax:               return "Vergi köçürməsi"
            case .vat:               return "ƏDV köçürməsi"
            case .salary:            return "Əmək haqqı"
            case .exchange:          return "STANDARD_EXCHANGE"
            case _:           return ""
            }
        }
        
        public var headerTitle: String {
            switch self {
            case .internal: return "Bankdaxili ödəniş"
            case .own: return "Öz hesablar arası"
            case .international: return "Beynəlxalq"
            case .domestic: return "Ölkədaxili ödəniş"
            case .salary: return "Əməkhaqqı ödənişi"
            case .vat: return "Vat"
            case .exchange: return "STANDARD_EXCHANGE"
            case .tax: return "Vergi"
            case .ibmg: return "Ölkə daxili(xarici valyuta)"
            case .ibtf: return "Moskva Köçürməsi"
            case _: return ""
            }
        }
        
        public static var zero: `Type` {
            .unknown
        }
    }
    
    public class Rate: Object {
        @Backend() public var standard: Double
        @Backend() public var individual: Double
    }
    
    public class Attachment: Object {
        
        @Backend() public var id: String
        @Backend() public var name: String
        @Backend() public var size: Int
        @Backend() public var originalFilename: String
        @Backend() public var bytes: [Int8]
        @Backend() public var contentType: String
        
        
        public func set(originalFilename: String) -> Attachment {
            self.originalFilename = originalFilename
            return self
        }
    
        public func set(name: String) -> Attachment {
            self.name = name
            return self
        }
        
        public func set(size: Int) -> Attachment {
            self.size = size
            return self
        }
        
        public func set (bytes: [Int8]) -> Attachment {
            self.bytes = bytes
            return self
        }
    }
    
    public class Flow: Object { }
    
    public class Swift: Object {
        @Backend() public var bankCode: String
        @Backend() public var bankName: String
        @Backend() public var bicCode: String
        @Backend() public var bankAddress: String
        @Backend() public var city: String
        @Backend() public var country: String
        @Backend() public var correspondentAccount: String
    }
}

extension Transfer {
    
}
