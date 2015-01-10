.class public Lcom/nbi/search/singlesearch/SuggestMatch;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nbi/common/NBIObject;


# static fields
.field public static final NBI_MATCH_TYPE_ADDRESS:I = 0x2

.field public static final NBI_MATCH_TYPE_AIRPORT:I = 0x3

.field public static final NBI_MATCH_TYPE_CATEGORY:I = 0x5

.field public static final NBI_MATCH_TYPE_GAS:I = 0x4

.field public static final NBI_MATCH_TYPE_POI:I = 0x1


# instance fields
.field private ln:Lnbisdk/dk;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lnbisdk/dk;

    iput-object p1, p0, Lcom/nbi/search/singlesearch/SuggestMatch;->ln:Lnbisdk/dk;

    return-void
.end method


# virtual methods
.method public getInternalObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nbi/search/singlesearch/SuggestMatch;->ln:Lnbisdk/dk;

    return-object v0
.end method

.method public getLine1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbi/search/singlesearch/SuggestMatch;->ln:Lnbisdk/dk;

    invoke-virtual {v0}, Lnbisdk/dk;->getLine1()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbi/search/singlesearch/SuggestMatch;->ln:Lnbisdk/dk;

    invoke-virtual {v0}, Lnbisdk/dk;->getLine2()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMatchType()I
    .locals 1

    iget-object v0, p0, Lcom/nbi/search/singlesearch/SuggestMatch;->ln:Lnbisdk/dk;

    invoke-virtual {v0}, Lnbisdk/dk;->getMatchType()I

    move-result v0

    return v0
.end method
