module nft::loyalty_card {
    use sui::package;
    use sui::object::{Self, UID, new};
    use sui::transfer;
    use sui::tx_context::{Self, TxContext, sender};
    use std::string::String;

    // structure of the NFT
    public struct Loyalty has key, store {
        id: UID,
        customer_id: address,
        image_url: String,
    }

    // Admin capability
    public struct AdminCap has key, store {
        id: UID
    }

    // one-time witness for package publishing
    public struct LOYALTY_CARD has drop {}

    // initializer function (called on publish)
    fun init(otw: LOYALTY_CARD, ctx: &mut TxContext) {
        package::claim_and_keep(otw, ctx);
        let admin_cap = AdminCap {
            id: new(ctx)
        };
        transfer::public_transfer(admin_cap, sender(ctx));
    }

    // mint function
    public fun mint_loyalty(customer_id: address, image_url: String, ctx: &mut TxContext) {
        let loyalty = Loyalty {
            id: new(ctx),
            customer_id,
            image_url,
        };
        transfer::transfer(loyalty, customer_id);
    }
}
