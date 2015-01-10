.class public Lcom/android/mms/spam/SpamFilter$SpamFilterCache;
.super Ljava/lang/Object;
.source "SpamFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/spam/SpamFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpamFilterCache"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/spam/SpamFilter$SpamFilterCache$Entry;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;


# instance fields
.field private final mCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/mms/spam/SpamFilter$SpamFilterData;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    .line 214
    iput-object p1, p0, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mContext:Landroid/content/Context;

    .line 215
    return-void
.end method

.method public static changeCheckStatus(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 7
    .parameter "context"
    .parameter "type"
    .parameter "filter"

    .prologue
    const/4 v5, 0x0

    .line 683
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    .line 708
    :goto_0
    return v4

    .line 686
    :cond_0
    const-string v4, "Mms/SpamFilter"

    const-string v6, "changeCheckStatus"

    invoke-static {v4, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    :try_start_0
    sget-object v4, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v4, v4, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 689
    .local v3, id:I
    sget-object v4, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v4, v4, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    .line 691
    .local v0, data:Lcom/android/mms/spam/SpamFilter$SpamFilterData;
    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mType:I
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$300(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)I

    move-result v4

    if-ne v4, p1, :cond_1

    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mCriteria:I
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$200(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)I

    move-result v4

    if-nez v4, :cond_1

    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$100(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 692
    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mEnable:Z
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$000(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 693
    const/4 v4, 0x0

    invoke-static {p0, v4, v3}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->updateSpamNumber(Landroid/content/Context;ZI)V

    .line 694
    const-string v4, "Mms/SpamFilter"

    const-string v6, "checkEnableStatus return true"

    invoke-static {v4, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 695
    const/4 v4, 0x1

    goto :goto_0

    .line 702
    .end local v0           #data:Lcom/android/mms/spam/SpamFilter$SpamFilterData;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #id:I
    :catch_0
    move-exception v1

    .line 703
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v4, "Mms/SpamFilter"

    const-string v6, "NullPointerException in checkAlreadyInUse()"

    invoke-static {v4, v6}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 704
    goto :goto_0

    .line 707
    .end local v1           #e:Ljava/lang/NullPointerException;
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_2
    const-string v4, "Mms/SpamFilter"

    const-string v6, "changeCheckStatus return false"

    invoke-static {v4, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 708
    goto :goto_0
.end method

.method public static checkAlreadyEnabledandUsed(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 7
    .parameter "context"
    .parameter "type"
    .parameter "filter"

    .prologue
    const/4 v5, 0x0

    .line 632
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    .line 649
    :goto_0
    return v4

    .line 636
    :cond_0
    :try_start_0
    sget-object v4, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v4, v4, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 637
    .local v3, id:I
    sget-object v4, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v4, v4, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    .line 640
    .local v0, data:Lcom/android/mms/spam/SpamFilter$SpamFilterData;
    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mType:I
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$300(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)I

    move-result v4

    if-ne v4, p1, :cond_1

    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mEnable:Z
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$000(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Z

    move-result v4

    if-eqz v4, :cond_1

    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mCriteria:I
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$200(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)I

    move-result v4

    if-nez v4, :cond_1

    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$100(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_1

    .line 641
    const/4 v4, 0x1

    goto :goto_0

    .line 645
    .end local v0           #data:Lcom/android/mms/spam/SpamFilter$SpamFilterData;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #id:I
    :catch_0
    move-exception v1

    .line 646
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v4, "Mms/SpamFilter"

    const-string v6, "NullPointerException in checkAlreadyInUse()"

    invoke-static {v4, v6}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 647
    goto :goto_0

    .end local v1           #e:Ljava/lang/NullPointerException;
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_2
    move v4, v5

    .line 649
    goto :goto_0
.end method

.method public static checkAlreadyInUse(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 8
    .parameter "context"
    .parameter "type"
    .parameter "filter"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 605
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    .line 628
    :goto_0
    return v4

    .line 609
    :cond_0
    :try_start_0
    sget-object v4, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v4, v4, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 610
    .local v3, id:I
    sget-object v4, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v4, v4, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    .line 612
    .local v0, data:Lcom/android/mms/spam/SpamFilter$SpamFilterData;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v4

    if-nez v4, :cond_2

    .line 613
    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mType:I
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$300(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)I

    move-result v4

    if-ne v4, p1, :cond_1

    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$100(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v6

    .line 615
    goto :goto_0

    .line 618
    :cond_2
    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mType:I
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$300(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)I

    move-result v4

    if-ne v4, p1, :cond_1

    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mCriteria:I
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$200(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)I

    move-result v4

    if-nez v4, :cond_1

    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$100(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_1

    move v4, v6

    .line 620
    goto :goto_0

    .line 624
    .end local v0           #data:Lcom/android/mms/spam/SpamFilter$SpamFilterData;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #id:I
    :catch_0
    move-exception v1

    .line 625
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v4, "Mms/SpamFilter"

    const-string v6, "NullPointerException in checkAlreadyInUse()"

    invoke-static {v4, v6}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 626
    goto :goto_0

    .end local v1           #e:Ljava/lang/NullPointerException;
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_3
    move v4, v5

    .line 628
    goto :goto_0
.end method

.method public static checkEnableStatus(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 8
    .parameter "context"
    .parameter "type"
    .parameter "filter"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 653
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    .line 678
    :goto_0
    return v4

    .line 656
    :cond_0
    const-string v4, "Mms/SpamFilter"

    const-string v7, "checkEnableStatus"

    invoke-static {v4, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    :try_start_0
    sget-object v4, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v4, v4, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 659
    .local v3, id:I
    sget-object v4, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v4, v4, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    .line 661
    .local v0, data:Lcom/android/mms/spam/SpamFilter$SpamFilterData;
    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mType:I
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$300(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)I

    move-result v4

    if-ne v4, p1, :cond_1

    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mCriteria:I
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$200(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)I

    move-result v4

    if-nez v4, :cond_1

    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$100(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 662
    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mEnable:Z
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$000(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 663
    const/4 v4, 0x1

    invoke-static {p0, v4, v3}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->updateSpamNumber(Landroid/content/Context;ZI)V

    .line 664
    const-string v4, "Mms/SpamFilter"

    const-string v7, "checkEnableStatus return true"

    invoke-static {v4, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v6

    .line 665
    goto :goto_0

    .line 672
    .end local v0           #data:Lcom/android/mms/spam/SpamFilter$SpamFilterData;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #id:I
    :catch_0
    move-exception v1

    .line 673
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v4, "Mms/SpamFilter"

    const-string v6, "NullPointerException in checkAlreadyInUse()"

    invoke-static {v4, v6}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 674
    goto :goto_0

    .line 677
    .end local v1           #e:Ljava/lang/NullPointerException;
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_2
    const-string v4, "Mms/SpamFilter"

    const-string v6, "checkEnableStatus return false"

    invoke-static {v4, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 678
    goto :goto_0
.end method

.method public static clear()V
    .locals 2

    .prologue
    .line 218
    const-string v0, "Mms/SpamFilter"

    const-string v1, "SpamFilter clear"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    sget-object v1, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    monitor-enter v1

    .line 221
    :try_start_0
    sget-object v0, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v0, v0, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 222
    monitor-exit v1

    .line 223
    return-void

    .line 222
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static delete(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 368
    sget-object v0, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v0, v0, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    sget-object v0, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v0, v0, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    :cond_0
    invoke-static {}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->dump()V

    .line 372
    return-void
.end method

.method public static delete(ILjava/lang/String;)V
    .locals 5
    .parameter "type"
    .parameter "filter"

    .prologue
    .line 375
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 377
    :cond_1
    sget-object v3, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v3, v3, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 378
    .local v2, id:I
    sget-object v3, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v3, v3, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    .line 379
    .local v0, data:Lcom/android/mms/spam/SpamFilter$SpamFilterData;
    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mType:I
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$300(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)I

    move-result v3

    if-ne v3, p0, :cond_2

    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$100(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 380
    sget-object v3, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v3, v3, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static dump()V
    .locals 5

    .prologue
    .line 731
    sget-object v3, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    monitor-enter v3

    .line 732
    :try_start_0
    const-string v2, "Mms/SpamFilter"

    const-string v4, "*** Spam cache dump ***"

    invoke-static {v2, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    sget-object v2, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v2, v2, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 734
    .local v1, id:I
    sget-object v2, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v2, v2, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    goto :goto_0

    .line 737
    .end local v1           #id:I
    :cond_0
    monitor-exit v3

    .line 738
    return-void

    .line 737
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static fill()V
    .locals 13

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 226
    const-string v10, "Mms/SpamFilter"

    const-string v11, "SpamFilter fill() begin"

    invoke-static {v10, v11}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    sget-object v10, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v0, v10, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mContext:Landroid/content/Context;

    .line 229
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/mms/spam/SpamFilter;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 232
    .local v7, c:Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 233
    const-string v8, "Mms/SpamFilter"

    const-string v9, "null Cursor in fill()"

    invoke-static {v8, v9}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    :goto_0
    return-void

    .line 238
    :cond_0
    :try_start_0
    sget-object v10, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    monitor-enter v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 239
    :try_start_1
    sget-object v11, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v11, v11, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->clear()V

    .line 240
    :cond_1
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 241
    const/4 v11, 0x0

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 242
    .local v2, id:I
    const/4 v11, 0x1

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 243
    .local v3, type:I
    const/4 v11, 0x2

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    if-eqz v11, :cond_2

    move v4, v8

    .line 244
    .local v4, enable:Z
    :goto_2
    const/4 v11, 0x3

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 245
    .local v5, filter:Ljava/lang/String;
    const/4 v11, 0x4

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 247
    .local v6, criteria:I
    if-eqz v4, :cond_1

    .line 248
    new-instance v1, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    invoke-direct/range {v1 .. v6}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;-><init>(IIZLjava/lang/String;I)V

    .line 249
    .local v1, data:Lcom/android/mms/spam/SpamFilter$SpamFilterData;
    sget-object v11, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v11, v11, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 252
    .end local v1           #data:Lcom/android/mms/spam/SpamFilter$SpamFilterData;
    .end local v2           #id:I
    .end local v3           #type:I
    .end local v4           #enable:Z
    .end local v5           #filter:Ljava/lang/String;
    .end local v6           #criteria:I
    :catchall_0
    move-exception v8

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 254
    :catchall_1
    move-exception v8

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v8

    .restart local v2       #id:I
    .restart local v3       #type:I
    :cond_2
    move v4, v9

    .line 243
    goto :goto_2

    .line 252
    .end local v2           #id:I
    .end local v3           #type:I
    :cond_3
    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 254
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 257
    const-string v8, "Mms/SpamFilter"

    const-string v9, "SpamFilter fill() finished"

    invoke-static {v8, v9}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-static {}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->dump()V

    goto :goto_0
.end method

.method public static fillIfCountChanged()V
    .locals 14

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 262
    const-string v11, "Mms/SpamFilter"

    const-string v12, "SpamFilter fillIfCountChanged() begin"

    invoke-static {v11, v12}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    :try_start_0
    sget-object v11, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v0, v11, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mContext:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/mms/spam/SpamFilter;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 273
    .local v7, c:Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 274
    const-string v9, "Mms/SpamFilter"

    const-string v10, "null Cursor in fill()"

    invoke-static {v9, v10}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    .end local v0           #context:Landroid/content/Context;
    .end local v7           #c:Landroid/database/Cursor;
    :goto_0
    return-void

    .line 266
    :catch_0
    move-exception v8

    .line 267
    .local v8, e:Ljava/lang/NullPointerException;
    const-string v9, "Mms/SpamFilter"

    const-string v10, "sInstance is null in fillIfCountChanged()"

    invoke-static {v9, v10}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 279
    .end local v8           #e:Ljava/lang/NullPointerException;
    .restart local v0       #context:Landroid/content/Context;
    .restart local v7       #c:Landroid/database/Cursor;
    :cond_0
    if-eqz v7, :cond_5

    .line 281
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v11

    sget-object v12, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v12, v12, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v12

    if-ne v11, v12, :cond_1

    .line 282
    const-string v9, "Mms/SpamFilter"

    const-string v10, "count of db and cache is same. Skip refreshing cache !"

    invoke-static {v9, v10}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 300
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 285
    :cond_1
    :try_start_2
    sget-object v11, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    monitor-enter v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 286
    :try_start_3
    sget-object v12, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v12, v12, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->clear()V

    .line 287
    :cond_2
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 288
    const/4 v12, 0x0

    invoke-interface {v7, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 289
    .local v2, id:I
    const/4 v12, 0x1

    invoke-interface {v7, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 290
    .local v3, type:I
    const/4 v12, 0x2

    invoke-interface {v7, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    if-eqz v12, :cond_3

    move v4, v9

    .line 291
    .local v4, enable:Z
    :goto_2
    const/4 v12, 0x3

    invoke-interface {v7, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 292
    .local v5, filter:Ljava/lang/String;
    const/4 v12, 0x4

    invoke-interface {v7, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 293
    .local v6, criteria:I
    if-eqz v4, :cond_2

    .line 294
    new-instance v1, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    invoke-direct/range {v1 .. v6}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;-><init>(IIZLjava/lang/String;I)V

    .line 295
    .local v1, data:Lcom/android/mms/spam/SpamFilter$SpamFilterData;
    sget-object v12, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v12, v12, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 298
    .end local v1           #data:Lcom/android/mms/spam/SpamFilter$SpamFilterData;
    .end local v2           #id:I
    .end local v3           #type:I
    .end local v4           #enable:Z
    .end local v5           #filter:Ljava/lang/String;
    .end local v6           #criteria:I
    :catchall_0
    move-exception v9

    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 300
    :catchall_1
    move-exception v9

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v9

    .restart local v2       #id:I
    .restart local v3       #type:I
    :cond_3
    move v4, v10

    .line 290
    goto :goto_2

    .line 298
    .end local v2           #id:I
    .end local v3           #type:I
    :cond_4
    :try_start_5
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 300
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 303
    :cond_5
    const-string v9, "Mms/SpamFilter"

    const-string v10, "SpamFilter fillIfCountChanged() finished"

    invoke-static {v9, v10}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-static {}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->dump()V

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/mms/spam/SpamFilter$SpamFilterCache;
    .locals 1

    .prologue
    .line 188
    sget-object v0, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 202
    new-instance v0, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    invoke-direct {v0, p0}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    .line 203
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/spam/SpamFilter$SpamFilterCache$1;

    invoke-direct {v1}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache$1;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 210
    return-void
.end method

.method public static insert(ILcom/android/mms/spam/SpamFilter$SpamFilterData;)V
    .locals 2
    .parameter "id"
    .parameter "data"

    .prologue
    .line 308
    sget-object v0, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v0, v0, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    invoke-static {}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->dump()V

    .line 310
    return-void
.end method

.method public static isSpam(Landroid/content/Context;Lcom/google/android/mms/pdu/EncodedStringValue;)Z
    .locals 10
    .parameter "context"
    .parameter "encText"

    .prologue
    const/4 v7, 0x0

    .line 449
    const/4 v5, 0x0

    .line 450
    .local v5, text:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 451
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v5

    .line 453
    :cond_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 454
    .local v2, emptyText:Z
    if-eqz v2, :cond_1

    move v6, v7

    .line 481
    :goto_0
    return v6

    .line 458
    :cond_1
    :try_start_0
    sget-object v8, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    monitor-enter v8
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 459
    :try_start_1
    sget-object v6, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v6, v6, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 461
    .local v4, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 462
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 463
    .local v3, id:I
    sget-object v6, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v6, v6, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    .line 465
    .local v0, data:Lcom/android/mms/spam/SpamFilter$SpamFilterData;
    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mType:I
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$300(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)I

    move-result v6

    if-eqz v6, :cond_2

    .line 468
    if-nez v2, :cond_2

    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mEnable:Z
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$000(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 471
    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$100(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->isTextMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 472
    const-string v6, "Mms/SpamFilter"

    const-string v9, "filtered by string"

    invoke-static {v6, v9}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    const/4 v6, 0x1

    monitor-exit v8

    goto :goto_0

    .line 477
    .end local v0           #data:Lcom/android/mms/spam/SpamFilter$SpamFilterData;
    .end local v3           #id:I
    .end local v4           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v6

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v6
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    .line 478
    :catch_0
    move-exception v1

    .line 479
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v6, "Mms/SpamFilter"

    const-string v8, "NullPointerExcetpion occurred. isSpam(context, encText)"

    invoke-static {v6, v8}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .end local v1           #e:Ljava/lang/NullPointerException;
    :goto_1
    move v6, v7

    .line 481
    goto :goto_0

    .line 477
    .restart local v4       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_3
    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public static isSpam(Landroid/content/Context;Lcom/google/android/mms/pdu/EncodedStringValue;Lcom/google/android/mms/pdu/EncodedStringValue;)Z
    .locals 3
    .parameter "context"
    .parameter "encNumber"
    .parameter "encText"

    .prologue
    .line 485
    const/4 v0, 0x0

    .line 486
    .local v0, number:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 487
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v0

    .line 488
    :cond_0
    const/4 v1, 0x0

    .line 489
    .local v1, text:Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 490
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v1

    .line 491
    :cond_1
    invoke-static {p0, v0, v1}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->isSpam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public static isSpam(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)Z
    .locals 14
    .parameter "context"
    .parameter "pdu"

    .prologue
    .line 389
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackList()Z

    move-result v11

    if-nez v11, :cond_0

    .line 390
    const/4 v11, 0x0

    .line 445
    .end local p1
    :goto_0
    return v11

    .line 393
    .restart local p1
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackList()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 394
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "messageblock_mode"

    const/4 v13, 0x2

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 396
    .local v0, blockMessageMode:I
    if-nez v0, :cond_1

    .line 397
    const/4 v11, 0x0

    goto :goto_0

    .line 398
    :cond_1
    const/4 v11, 0x1

    if-ne v0, v11, :cond_2

    .line 399
    const/4 v11, 0x1

    goto :goto_0

    .line 404
    .end local v0           #blockMessageMode:I
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v11

    if-nez v11, :cond_3

    .line 405
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSpamOption(Landroid/content/Context;)Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 406
    .local v8, spamOption:Ljava/lang/Boolean;
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-nez v11, :cond_3

    .line 407
    const/4 v11, 0x0

    goto :goto_0

    .line 410
    .end local v8           #spamOption:Ljava/lang/Boolean;
    :cond_3
    const/4 v1, 0x0

    .line 411
    .local v1, body:Lcom/google/android/mms/pdu/PduBody;
    instance-of v11, p1, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    if-eqz v11, :cond_7

    .line 412
    check-cast p1, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    .end local p1
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v1

    .line 414
    if-nez v1, :cond_4

    .line 415
    const/4 v11, 0x0

    goto :goto_0

    .line 417
    :cond_4
    const/4 v9, 0x0

    .line 418
    .local v9, szBody:Lcom/google/android/mms/pdu/EncodedStringValue;
    const/4 v3, 0x0

    .line 419
    .local v3, data:[B
    const/4 v2, 0x0

    .line 420
    .local v2, contentType:Ljava/lang/String;
    invoke-virtual {v1}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v7

    .line 421
    .local v7, partsNum:I
    const/4 v5, 0x0

    .local v5, i:I
    move-object v10, v9

    .end local v9           #szBody:Lcom/google/android/mms/pdu/EncodedStringValue;
    .local v10, szBody:Lcom/google/android/mms/pdu/EncodedStringValue;
    :goto_1
    if-ge v5, v7, :cond_7

    .line 422
    invoke-virtual {v1, v5}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v6

    .line 424
    .local v6, part:Lcom/google/android/mms/pdu/PduPart;
    :try_start_0
    invoke-virtual {v6}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v11

    if-eqz v11, :cond_8

    .line 425
    invoke-virtual {v6}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v11

    invoke-static {v11}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v2

    .line 426
    invoke-virtual {v6}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v3

    .line 427
    const-string v11, "text/plain"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 430
    if-nez v3, :cond_6

    move-object v9, v10

    .line 421
    .end local v10           #szBody:Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v9       #szBody:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_5
    :goto_2
    add-int/lit8 v5, v5, 0x1

    move-object v10, v9

    .end local v9           #szBody:Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v10       #szBody:Lcom/google/android/mms/pdu/EncodedStringValue;
    goto :goto_1

    .line 433
    :cond_6
    new-instance v9, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v9, v3}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 434
    .end local v10           #szBody:Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v9       #szBody:Lcom/google/android/mms/pdu/EncodedStringValue;
    :try_start_1
    invoke-static {p0, v9}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->isSpam(Landroid/content/Context;Lcom/google/android/mms/pdu/EncodedStringValue;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v11

    if-eqz v11, :cond_5

    .line 435
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 439
    .end local v9           #szBody:Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v10       #szBody:Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_0
    move-exception v4

    move-object v9, v10

    .line 440
    .end local v10           #szBody:Lcom/google/android/mms/pdu/EncodedStringValue;
    .local v4, ex:Ljava/lang/Exception;
    .restart local v9       #szBody:Lcom/google/android/mms/pdu/EncodedStringValue;
    :goto_3
    const-string v11, "Mms/SpamFilter"

    const-string v12, " isSpam Error.."

    invoke-static {v11, v12}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 445
    .end local v2           #contentType:Ljava/lang/String;
    .end local v3           #data:[B
    .end local v4           #ex:Ljava/lang/Exception;
    .end local v5           #i:I
    .end local v6           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v7           #partsNum:I
    .end local v9           #szBody:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_7
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 439
    .restart local v2       #contentType:Ljava/lang/String;
    .restart local v3       #data:[B
    .restart local v5       #i:I
    .restart local v6       #part:Lcom/google/android/mms/pdu/PduPart;
    .restart local v7       #partsNum:I
    .restart local v9       #szBody:Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_1
    move-exception v4

    goto :goto_3

    .end local v9           #szBody:Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v10       #szBody:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_8
    move-object v9, v10

    .end local v10           #szBody:Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v9       #szBody:Lcom/google/android/mms/pdu/EncodedStringValue;
    goto :goto_2
.end method

.method public static isSpam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 16
    .parameter "context"
    .parameter "number"
    .parameter "text"

    .prologue
    .line 495
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackList()Z

    move-result v12

    if-nez v12, :cond_0

    .line 496
    const/4 v12, 0x0

    .line 593
    :goto_0
    return v12

    .line 498
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackList()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 499
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "messageblock_mode"

    const/4 v14, 0x2

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 501
    .local v1, blockMessageMode:I
    if-nez v1, :cond_1

    .line 502
    const/4 v12, 0x0

    goto :goto_0

    .line 503
    :cond_1
    const/4 v12, 0x1

    if-ne v1, v12, :cond_2

    .line 504
    const/4 v12, 0x1

    goto :goto_0

    .line 506
    :cond_2
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 507
    .local v10, spamPreference:Landroid/content/SharedPreferences;
    const-string v12, "pref_key_spam_option_unknown_num"

    const/4 v13, 0x0

    invoke-interface {v10, v12, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 508
    .local v11, unknownMode:Z
    if-eqz v11, :cond_3

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 509
    const/4 v12, 0x1

    goto :goto_0

    .line 513
    .end local v1           #blockMessageMode:I
    .end local v10           #spamPreference:Landroid/content/SharedPreferences;
    .end local v11           #unknownMode:Z
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v12

    if-nez v12, :cond_5

    .line 514
    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSpamOption(Landroid/content/Context;)Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 515
    .local v9, spamOption:Ljava/lang/Boolean;
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-nez v12, :cond_4

    .line 516
    const/4 v12, 0x0

    goto :goto_0

    .line 517
    :cond_4
    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSpamFilterUnknown(Landroid/content/Context;)Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 518
    .local v8, spamFilterUnknown:Ljava/lang/Boolean;
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 519
    const/4 v12, 0x1

    goto :goto_0

    .line 526
    .end local v8           #spamFilterUnknown:Ljava/lang/Boolean;
    .end local v9           #spamOption:Ljava/lang/Boolean;
    :cond_5
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 527
    .local v4, emptyNumber:Z
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    .line 528
    .local v5, emptyText:Z
    if-eqz v4, :cond_6

    if-eqz v5, :cond_6

    .line 529
    const/4 v12, 0x0

    goto :goto_0

    .line 531
    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 532
    invoke-static {}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->fill()V

    .line 538
    :goto_1
    :try_start_0
    sget-object v13, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    monitor-enter v13
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 539
    :try_start_1
    sget-object v12, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v12, v12, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 540
    .local v7, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_7
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_a

    .line 541
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 542
    .local v6, id:I
    sget-object v12, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v12, v12, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    .line 543
    .local v2, data:Lcom/android/mms/spam/SpamFilter$SpamFilterData;
    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mType:I
    invoke-static {v2}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$300(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)I

    move-result v12

    if-nez v12, :cond_9

    .line 544
    if-nez v4, :cond_7

    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mEnable:Z
    invoke-static {v2}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$000(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 547
    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mCriteria:I
    invoke-static {v2}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$200(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)I

    move-result v12

    packed-switch v12, :pswitch_data_0

    goto :goto_2

    .line 549
    :pswitch_0
    const-string v12, "Mms/SpamFilter"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "exactly same as data.mFilter: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$100(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "number"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$100(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 551
    const-string v12, "Mms/SpamFilter"

    const-string v14, "filtered by number CRITERIA_EXACTLY_SAME"

    invoke-static {v12, v14}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    const/4 v12, 0x1

    monitor-exit v13

    goto/16 :goto_0

    .line 587
    .end local v2           #data:Lcom/android/mms/spam/SpamFilter$SpamFilterData;
    .end local v6           #id:I
    .end local v7           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v12
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    .line 588
    :catch_0
    move-exception v3

    .line 589
    .local v3, e:Ljava/lang/NullPointerException;
    const-string v12, "Mms/SpamFilter"

    const-string v13, "NullPointerExcetpion occurred."

    invoke-static {v12, v13}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    .end local v3           #e:Ljava/lang/NullPointerException;
    :goto_3
    const-string v12, "Mms/SpamFilter"

    const-string v13, "isSpam return false"

    invoke-static {v12, v13}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 535
    :cond_8
    invoke-static {}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->fillIfCountChanged()V

    goto/16 :goto_1

    .line 557
    .restart local v2       #data:Lcom/android/mms/spam/SpamFilter$SpamFilterData;
    .restart local v6       #id:I
    .restart local v7       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :pswitch_1
    :try_start_3
    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$100(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 558
    const-string v12, "Mms/SpamFilter"

    const-string v14, "filtered by number"

    invoke-static {v12, v14}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    const/4 v12, 0x1

    monitor-exit v13

    goto/16 :goto_0

    .line 564
    :pswitch_2
    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$100(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 565
    const-string v12, "Mms/SpamFilter"

    const-string v14, "filtered by number"

    invoke-static {v12, v14}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    const/4 v12, 0x1

    monitor-exit v13

    goto/16 :goto_0

    .line 571
    :pswitch_3
    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$100(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 572
    const-string v12, "Mms/SpamFilter"

    const-string v14, "filtered by number"

    invoke-static {v12, v14}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    const/4 v12, 0x1

    monitor-exit v13

    goto/16 :goto_0

    .line 578
    :cond_9
    if-nez v5, :cond_7

    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mEnable:Z
    invoke-static {v2}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$000(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 581
    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$100(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-static {v0, v12}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->isTextMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 582
    const-string v12, "Mms/SpamFilter"

    const-string v14, "filtered by string"

    invoke-static {v12, v14}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    const/4 v12, 0x1

    monitor-exit v13

    goto/16 :goto_0

    .line 587
    .end local v2           #data:Lcom/android/mms/spam/SpamFilter$SpamFilterData;
    .end local v6           #id:I
    :cond_a
    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 547
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static isTextMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "text"
    .parameter "pattern"

    .prologue
    .line 597
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 598
    :cond_0
    const/4 v0, 0x0

    .line 601
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method public static update(ILcom/android/mms/spam/SpamFilter$SpamFilterData;)V
    .locals 2
    .parameter "id"
    .parameter "data"

    .prologue
    .line 313
    sget-object v0, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v0, v0, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    sget-object v0, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v0, v0, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    :cond_0
    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mEnable:Z
    invoke-static {p1}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$000(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 317
    sget-object v0, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v0, v0, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    :cond_1
    invoke-static {}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->dump()V

    .line 320
    return-void
.end method

.method public static update(ILjava/lang/String;)V
    .locals 3
    .parameter "id"
    .parameter "filter"

    .prologue
    .line 323
    sget-object v1, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v1, v1, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 330
    :goto_0
    return-void

    .line 326
    :cond_0
    sget-object v1, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v1, v1, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    .line 327
    .local v0, data:Lcom/android/mms/spam/SpamFilter$SpamFilterData;
    #setter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$102(Lcom/android/mms/spam/SpamFilter$SpamFilterData;Ljava/lang/String;)Ljava/lang/String;

    .line 329
    invoke-static {}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->dump()V

    goto :goto_0
.end method

.method public static update(ILjava/lang/String;Z)V
    .locals 3
    .parameter "id"
    .parameter "filter"
    .parameter "enable"

    .prologue
    .line 357
    sget-object v1, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v1, v1, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 365
    :goto_0
    return-void

    .line 360
    :cond_0
    sget-object v1, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v1, v1, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    .line 361
    .local v0, data:Lcom/android/mms/spam/SpamFilter$SpamFilterData;
    #setter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$102(Lcom/android/mms/spam/SpamFilter$SpamFilterData;Ljava/lang/String;)Ljava/lang/String;

    .line 362
    #setter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mEnable:Z
    invoke-static {v0, p2}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$002(Lcom/android/mms/spam/SpamFilter$SpamFilterData;Z)Z

    .line 364
    invoke-static {}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->dump()V

    goto :goto_0
.end method

.method public static update(ILjava/lang/String;ZI)V
    .locals 3
    .parameter "id"
    .parameter "filter"
    .parameter "enable"
    .parameter "criteria"

    .prologue
    .line 345
    sget-object v1, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v1, v1, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 354
    :goto_0
    return-void

    .line 348
    :cond_0
    sget-object v1, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v1, v1, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    .line 349
    .local v0, data:Lcom/android/mms/spam/SpamFilter$SpamFilterData;
    #setter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$102(Lcom/android/mms/spam/SpamFilter$SpamFilterData;Ljava/lang/String;)Ljava/lang/String;

    .line 350
    #setter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mEnable:Z
    invoke-static {v0, p2}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$002(Lcom/android/mms/spam/SpamFilter$SpamFilterData;Z)Z

    .line 351
    #setter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mCriteria:I
    invoke-static {v0, p3}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$202(Lcom/android/mms/spam/SpamFilter$SpamFilterData;I)I

    .line 353
    invoke-static {}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->dump()V

    goto :goto_0
.end method

.method public static update(IZ)V
    .locals 4
    .parameter "id"
    .parameter "enable"

    .prologue
    .line 333
    sget-object v1, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v1, v1, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 342
    :goto_0
    return-void

    .line 336
    :cond_0
    sget-object v1, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->sInstance:Lcom/android/mms/spam/SpamFilter$SpamFilterCache;

    iget-object v1, v1, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->mCache:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    .line 337
    .local v0, data:Lcom/android/mms/spam/SpamFilter$SpamFilterData;
    const-string v1, "Mms/SpamFilter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update before data= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "data.mEnable= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mEnable:Z
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$000(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    #setter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mEnable:Z
    invoke-static {v0, p1}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$002(Lcom/android/mms/spam/SpamFilter$SpamFilterData;Z)Z

    .line 340
    const-string v1, "Mms/SpamFilter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update after data= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "data.mEnable= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    #getter for: Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mEnable:Z
    invoke-static {v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->access$000(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    invoke-static {}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->dump()V

    goto :goto_0
.end method

.method public static updateSpamNumber(Landroid/content/Context;ZI)V
    .locals 5
    .parameter "context"
    .parameter "checked"
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    .line 714
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 716
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "Mms/SpamFilter"

    const-string v3, "updateSpamNumber"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    const-string v3, "enable"

    if-nez p1, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 721
    sget-object v2, Lcom/android/mms/spam/SpamFilter;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 722
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 726
    invoke-static {p2, p1}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->update(IZ)V

    .line 727
    return-void

    .line 717
    .end local v0           #uri:Landroid/net/Uri;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method
