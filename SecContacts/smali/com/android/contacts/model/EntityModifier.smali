.class public Lcom/android/contacts/model/EntityModifier;
.super Ljava/lang/Object;
.source "EntityModifier.java"


# static fields
.field public static SIM_ONE:I

.field public static SIM_ZERO:I

.field private static final sGenericMimeTypesWithTypeSupport:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sGenericMimeTypesWithoutTypeSupport:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 185
    sput v4, Lcom/android/contacts/model/EntityModifier;->SIM_ZERO:I

    .line 187
    sput v5, Lcom/android/contacts/model/EntityModifier;->SIM_ONE:I

    .line 2653
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "vnd.android.cursor.item/phone_v2"

    aput-object v2, v1, v4

    const-string v2, "vnd.android.cursor.item/email_v2"

    aput-object v2, v1, v5

    const-string v2, "vnd.android.cursor.item/im"

    aput-object v2, v1, v6

    const-string v2, "vnd.android.cursor.item/nickname"

    aput-object v2, v1, v7

    const-string v2, "vnd.android.cursor.item/website"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "vnd.android.cursor.item/relation"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "vnd.android.cursor.item/sip_address"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/contacts/model/EntityModifier;->sGenericMimeTypesWithTypeSupport:Ljava/util/Set;

    .line 2669
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "vnd.android.cursor.item/organization"

    aput-object v2, v1, v4

    const-string v2, "vnd.android.cursor.item/note"

    aput-object v2, v1, v5

    const-string v2, "vnd.android.cursor.item/photo"

    aput-object v2, v1, v6

    const-string v2, "vnd.android.cursor.item/group_membership"

    aput-object v2, v1, v7

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/contacts/model/EntityModifier;->sGenericMimeTypesWithoutTypeSupport:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static adjustType(Lcom/android/contacts/model/EntityDelta$ValuesDelta;Ljava/util/ArrayList;Lcom/android/contacts/model/DataKind;)Z
    .locals 8
    .parameter "entry"
    .parameter
    .parameter "kind"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/model/EntityDelta$ValuesDelta;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/EntityDelta$ValuesDelta;",
            ">;",
            "Lcom/android/contacts/model/DataKind;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2203
    iget-object v5, p2, Lcom/android/contacts/model/DataKind;->typeColumn:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p2, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    if-eqz v5, :cond_0

    iget-object v5, p2, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    move v5, v6

    .line 2247
    :goto_0
    return v5

    .line 2211
    :cond_1
    iget-object v5, p2, Lcom/android/contacts/model/DataKind;->typeColumn:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 2213
    .local v4, typeInteger:Ljava/lang/Integer;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2217
    .local v3, type:I
    :goto_1
    invoke-static {v3, p1, p2}, Lcom/android/contacts/model/EntityModifier;->isTypeAllowed(ILjava/util/ArrayList;Lcom/android/contacts/model/DataKind;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2219
    iget-object v5, p2, Lcom/android/contacts/model/DataKind;->typeColumn:Ljava/lang/String;

    invoke-virtual {p0, v5, v3}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;I)V

    move v5, v6

    .line 2221
    goto :goto_0

    .line 2213
    .end local v3           #type:I
    :cond_2
    iget-object v5, p2, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/model/AccountType$EditType;

    iget v3, v5, Lcom/android/contacts/model/AccountType$EditType;->rawValue:I

    goto :goto_1

    .line 2229
    .restart local v3       #type:I
    :cond_3
    iget-object v5, p2, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    .line 2231
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v2, :cond_5

    .line 2233
    iget-object v5, p2, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountType$EditType;

    .line 2235
    .local v0, editType:Lcom/android/contacts/model/AccountType$EditType;
    iget v5, v0, Lcom/android/contacts/model/AccountType$EditType;->rawValue:I

    invoke-static {v5, p1, p2}, Lcom/android/contacts/model/EntityModifier;->isTypeAllowed(ILjava/util/ArrayList;Lcom/android/contacts/model/DataKind;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2237
    iget-object v5, p2, Lcom/android/contacts/model/DataKind;->typeColumn:Ljava/lang/String;

    iget v7, v0, Lcom/android/contacts/model/AccountType$EditType;->rawValue:I

    invoke-virtual {p0, v5, v7}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;I)V

    move v5, v6

    .line 2239
    goto :goto_0

    .line 2231
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v0           #editType:Lcom/android/contacts/model/AccountType$EditType;
    :cond_5
    move v5, v7

    .line 2247
    goto :goto_0
.end method

.method protected static areEqual(Lcom/android/contacts/model/EntityDelta$ValuesDelta;Landroid/content/ContentValues;Lcom/android/contacts/model/DataKind;)Z
    .locals 6
    .parameter "values1"
    .parameter "values2"
    .parameter "kind"

    .prologue
    const/4 v4, 0x0

    .line 1110
    iget-object v5, p2, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    if-nez v5, :cond_0

    .line 1130
    :goto_0
    return v4

    .line 1114
    :cond_0
    iget-object v5, p2, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountType$EditField;

    .line 1116
    .local v0, field:Lcom/android/contacts/model/AccountType$EditField;
    iget-object v5, v0, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1118
    .local v2, value1:Ljava/lang/String;
    iget-object v5, v0, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1120
    .local v3, value2:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    .line 1130
    .end local v0           #field:Lcom/android/contacts/model/AccountType$EditField;
    .end local v2           #value1:Ljava/lang/String;
    .end local v3           #value2:Ljava/lang/String;
    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static canInsert(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;)Z
    .locals 7
    .parameter "state"
    .parameter "kind"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 205
    if-nez p1, :cond_0

    .line 215
    :goto_0
    return v4

    .line 207
    :cond_0
    iget-object v5, p1, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {p0, v5, v3}, Lcom/android/contacts/model/EntityDelta;->getMimeEntriesCount(Ljava/lang/String;Z)I

    move-result v2

    .line 209
    .local v2, visibleCount:I
    invoke-static {p0, p1}, Lcom/android/contacts/model/EntityModifier;->hasValidTypes(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;)Z

    move-result v1

    .line 211
    .local v1, validTypes:Z
    iget v5, p1, Lcom/android/contacts/model/DataKind;->typeOverallMax:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    iget v5, p1, Lcom/android/contacts/model/DataKind;->typeOverallMax:I

    if-ge v2, v5, :cond_2

    :cond_1
    move v0, v3

    .line 215
    .local v0, validOverall:Z
    :goto_1
    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    :goto_2
    move v4, v3

    goto :goto_0

    .end local v0           #validOverall:Z
    :cond_2
    move v0, v4

    .line 211
    goto :goto_1

    .restart local v0       #validOverall:Z
    :cond_3
    move v3, v4

    .line 215
    goto :goto_2
.end method

.method private static ensureEntryMaxSize(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .parameter "newState"
    .parameter "kind"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/model/EntityDelta;",
            "Lcom/android/contacts/model/DataKind;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/EntityDelta$ValuesDelta;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/EntityDelta$ValuesDelta;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2903
    .local p2, mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    if-nez p2, :cond_0

    .line 2905
    const/4 v3, 0x0

    .line 2933
    :goto_0
    return-object v3

    .line 2911
    :cond_0
    iget v2, p1, Lcom/android/contacts/model/DataKind;->typeOverallMax:I

    .line 2913
    .local v2, typeOverallMax:I
    iget-boolean v3, p1, Lcom/android/contacts/model/DataKind;->isList:Z

    if-nez v3, :cond_1

    .line 2915
    const/4 v2, 0x1

    .line 2919
    :cond_1
    if-ltz v2, :cond_3

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v2, :cond_3

    .line 2921
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 2923
    .local v1, newMimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 2925
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2923
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2929
    :cond_2
    move-object p2, v1

    .end local v0           #i:I
    .end local v1           #newMimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    :cond_3
    move-object v3, p2

    .line 2933
    goto :goto_0
.end method

.method public static ensureKindExists(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .locals 6
    .parameter "state"
    .parameter "accountType"
    .parameter "mimeType"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 244
    invoke-virtual {p1, p2}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v2

    .line 245
    .local v2, kind:Lcom/android/contacts/model/DataKind;
    invoke-virtual {p0, p2, v3}, Lcom/android/contacts/model/EntityDelta;->getMimeEntriesCount(Ljava/lang/String;Z)I

    move-result v5

    if-lez v5, :cond_0

    move v1, v3

    .line 247
    .local v1, hasChild:Z
    :goto_0
    if-eqz v2, :cond_3

    .line 248
    if-eqz v1, :cond_1

    invoke-virtual {p0, p2}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 250
    invoke-virtual {p0, p2}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 260
    :goto_1
    return-object v3

    .end local v1           #hasChild:Z
    :cond_0
    move v1, v4

    .line 245
    goto :goto_0

    .line 253
    .restart local v1       #hasChild:Z
    :cond_1
    invoke-static {p0, v2}, Lcom/android/contacts/model/EntityModifier;->insertChild(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v0

    .line 254
    .local v0, child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    iget-object v4, v2, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    const-string v5, "vnd.android.cursor.item/photo"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 255
    invoke-virtual {v0, v3}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->setFromTemplate(Z)V

    :cond_2
    move-object v3, v0

    .line 257
    goto :goto_1

    .line 260
    .end local v0           #child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static ensureKindExistsSIMPhone(Landroid/content/Context;Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Ljava/lang/String;)V
    .locals 12
    .parameter "context"
    .parameter "state"
    .parameter "accountType"
    .parameter "mimeType"

    .prologue
    const/4 v11, 0x3

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 275
    invoke-virtual {p2, p3}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v5

    .line 277
    .local v5, kind:Lcom/android/contacts/model/DataKind;
    invoke-virtual {p1, p3, v7}, Lcom/android/contacts/model/EntityDelta;->getMimeEntriesCount(Ljava/lang/String;Z)I

    move-result v9

    if-lez v9, :cond_4

    move v3, v7

    .line 279
    .local v3, hasChild:Z
    :goto_0
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getAnrConfigValue()I

    move-result v0

    .line 281
    .local v0, anrConfigValue:I
    invoke-static {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v6

    .line 285
    .local v6, manageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    if-nez v3, :cond_6

    if-eqz v5, :cond_6

    .line 287
    invoke-static {p1, v5}, Lcom/android/contacts/model/EntityModifier;->insertChild(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 289
    iget-object v9, p2, Lcom/android/contacts/model/AccountType;->accountType:Ljava/lang/String;

    const-string v10, "vnd.sec.contact.sim"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    if-lez v0, :cond_5

    invoke-virtual {v6}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimType()Ljava/lang/String;

    move-result-object v9

    const-string v10, "2"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 292
    invoke-virtual {v6, v8}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isAnrFull(I)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {p1, v5}, Lcom/android/contacts/model/EntityModifier;->insertChild(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 294
    :cond_0
    if-le v0, v11, :cond_3

    .line 295
    invoke-virtual {v6, v7}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isAnrFull(I)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {p1, v5}, Lcom/android/contacts/model/EntityModifier;->insertChild(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 296
    :cond_1
    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isAnrFull(I)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {p1, v5}, Lcom/android/contacts/model/EntityModifier;->insertChild(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 297
    :cond_2
    invoke-virtual {v6, v11}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isAnrFull(I)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-static {p1, v5}, Lcom/android/contacts/model/EntityModifier;->insertChild(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 337
    :cond_3
    :goto_1
    return-void

    .end local v0           #anrConfigValue:I
    .end local v3           #hasChild:Z
    .end local v6           #manageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    :cond_4
    move v3, v8

    .line 277
    goto :goto_0

    .line 299
    .restart local v0       #anrConfigValue:I
    .restart local v3       #hasChild:Z
    .restart local v6       #manageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    :cond_5
    iget-object v7, p2, Lcom/android/contacts/model/AccountType;->accountType:Ljava/lang/String;

    const-string v9, "vnd.sec.contact.sim2"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    if-lez v0, :cond_3

    sget v7, Lcom/android/contacts/model/EntityModifier;->SIM_ONE:I

    invoke-virtual {v6, v7}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimType(I)Ljava/lang/String;

    move-result-object v7

    const-string v9, "2"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 303
    invoke-virtual {v6, v8}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isAnrFull(I)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-static {p1, v5}, Lcom/android/contacts/model/EntityModifier;->insertChild(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    goto :goto_1

    .line 312
    :cond_6
    if-eqz v3, :cond_3

    if-eqz v5, :cond_3

    .line 314
    iget-object v8, p2, Lcom/android/contacts/model/AccountType;->accountType:Ljava/lang/String;

    const-string v9, "vnd.sec.contact.sim"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    if-lez v0, :cond_7

    invoke-virtual {v6}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimType()Ljava/lang/String;

    move-result-object v8

    const-string v9, "2"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 317
    invoke-virtual {v6}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getAnrFieldCount()I

    move-result v1

    .line 318
    .local v1, anrFieldCount:I
    invoke-virtual {p1, p3, v7}, Lcom/android/contacts/model/EntityDelta;->getMimeEntriesCount(Ljava/lang/String;Z)I

    move-result v2

    .line 320
    .local v2, currentNumberCount:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    add-int/lit8 v7, v1, 0x1

    sub-int/2addr v7, v2

    if-ge v4, v7, :cond_3

    .line 321
    const-string v7, "EntityModifier"

    const-string v8, "ensureKindExists () : insertChild for edit"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-static {p1, v5}, Lcom/android/contacts/model/EntityModifier;->insertChild(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 320
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 324
    .end local v1           #anrFieldCount:I
    .end local v2           #currentNumberCount:I
    .end local v4           #i:I
    :cond_7
    iget-object v8, p2, Lcom/android/contacts/model/AccountType;->accountType:Ljava/lang/String;

    const-string v9, "vnd.sec.contact.sim2"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    if-lez v0, :cond_3

    sget v8, Lcom/android/contacts/model/EntityModifier;->SIM_ONE:I

    invoke-virtual {v6, v8}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimType(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "2"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 328
    sget v8, Lcom/android/contacts/model/EntityModifier;->SIM_ONE:I

    invoke-virtual {v6, v8}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getAnrFieldCount(I)I

    move-result v1

    .line 329
    .restart local v1       #anrFieldCount:I
    invoke-virtual {p1, p3, v7}, Lcom/android/contacts/model/EntityDelta;->getMimeEntriesCount(Ljava/lang/String;Z)I

    move-result v2

    .line 331
    .restart local v2       #currentNumberCount:I
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_3
    add-int/lit8 v7, v1, 0x1

    sub-int/2addr v7, v2

    if-ge v4, v7, :cond_3

    .line 332
    const-string v7, "EntityModifier"

    const-string v8, "ensureKindExists () : insertChild for edit"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-static {p1, v5}, Lcom/android/contacts/model/EntityModifier;->insertChild(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 331
    add-int/lit8 v4, v4, 0x1

    goto :goto_3
.end method

.method private static fixupLegacyImType(Landroid/os/Bundle;)V
    .locals 4
    .parameter "bundle"

    .prologue
    .line 2361
    const-string v2, "im_protocol"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2363
    .local v0, encodedString:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 2389
    :goto_0
    return-void

    .line 2369
    :cond_0
    :try_start_0
    invoke-static {v0}, Landroid/provider/Contacts$ContactMethods;->decodeImProtocol(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 2373
    .local v1, protocol:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 2375
    const-string v2, "im_protocol"

    check-cast v1, Ljava/lang/Integer;

    .end local v1           #protocol:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 2383
    :catch_0
    move-exception v2

    goto :goto_0

    .line 2379
    .restart local v1       #protocol:Ljava/lang/Object;
    :cond_1
    const-string v2, "im_protocol"

    check-cast v1, Ljava/lang/String;

    .end local v1           #protocol:Ljava/lang/Object;
    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public static getBestValidType(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;ZI)Lcom/android/contacts/model/AccountType$EditType;
    .locals 7
    .parameter "state"
    .parameter "kind"
    .parameter "includeSecondary"
    .parameter "exactValue"

    .prologue
    const/4 v3, 0x0

    .line 702
    if-nez p1, :cond_1

    .line 770
    :cond_0
    :goto_0
    return-object v3

    .line 706
    :cond_1
    iget-object v6, p1, Lcom/android/contacts/model/DataKind;->typeColumn:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 712
    invoke-static {p0, p1}, Lcom/android/contacts/model/EntityModifier;->getTypeFrequencies(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;)Landroid/util/SparseIntArray;

    move-result-object v4

    .line 714
    .local v4, typeCount:Landroid/util/SparseIntArray;
    invoke-static {p0, p1, v3, p2, v4}, Lcom/android/contacts/model/EntityModifier;->getValidTypes(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/AccountType$EditType;ZLandroid/util/SparseIntArray;)Ljava/util/ArrayList;

    move-result-object v5

    .line 718
    .local v5, validTypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/AccountType$EditType;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_0

    .line 724
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/AccountType$EditType;

    .line 730
    .local v2, lastType:Lcom/android/contacts/model/AccountType$EditType;
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 732
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/model/AccountType$EditType;>;"
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 734
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/AccountType$EditType;

    .line 736
    .local v3, type:Lcom/android/contacts/model/AccountType$EditType;
    iget v6, v3, Lcom/android/contacts/model/AccountType$EditType;->rawValue:I

    invoke-virtual {v4, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 740
    .local v0, count:I
    iget v6, v3, Lcom/android/contacts/model/AccountType$EditType;->rawValue:I

    if-eq p3, v6, :cond_0

    .line 750
    if-lez v0, :cond_2

    .line 754
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 764
    .end local v0           #count:I
    .end local v3           #type:Lcom/android/contacts/model/AccountType$EditType;
    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 766
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/model/AccountType$EditType;

    move-object v3, v6

    goto :goto_0

    :cond_4
    move-object v3, v2

    .line 770
    goto :goto_0
.end method

.method public static getCurrentType(Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/AccountType$EditType;
    .locals 2
    .parameter "entry"
    .parameter "kind"

    .prologue
    .line 578
    iget-object v1, p1, Lcom/android/contacts/model/DataKind;->typeColumn:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 580
    .local v0, rawValue:Ljava/lang/Long;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 582
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-static {p1, v1}, Lcom/android/contacts/model/EntityModifier;->getType(Lcom/android/contacts/model/DataKind;I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    goto :goto_0
.end method

.method private static getEntryCountByType(Ljava/util/ArrayList;Ljava/lang/String;I)I
    .locals 5
    .parameter
    .parameter "typeColumn"
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/EntityDelta$ValuesDelta;",
            ">;",
            "Ljava/lang/String;",
            "I)I"
        }
    .end annotation

    .prologue
    .line 2321
    .local p0, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    const/4 v0, 0x0

    .line 2325
    .local v0, count:I
    if-eqz p0, :cond_1

    .line 2327
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2329
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 2331
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v4, p1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 2333
    .local v3, typeInteger:Ljava/lang/Integer;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, p2, :cond_0

    .line 2335
    add-int/lit8 v0, v0, 0x1

    .line 2329
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2343
    .end local v1           #i:I
    .end local v2           #size:I
    .end local v3           #typeInteger:Ljava/lang/Integer;
    :cond_1
    return v0
.end method

.method public static getType(Lcom/android/contacts/model/DataKind;I)Lcom/android/contacts/model/AccountType$EditType;
    .locals 3
    .parameter "kind"
    .parameter "rawValue"

    .prologue
    .line 642
    iget-object v2, p0, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/AccountType$EditType;

    .line 644
    .local v1, type:Lcom/android/contacts/model/AccountType$EditType;
    iget v2, v1, Lcom/android/contacts/model/AccountType$EditType;->rawValue:I

    if-ne v2, p1, :cond_0

    .line 652
    .end local v1           #type:Lcom/android/contacts/model/AccountType$EditType;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getTypeFrequencies(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;)Landroid/util/SparseIntArray;
    .locals 9
    .parameter "state"
    .parameter "kind"

    .prologue
    .line 498
    new-instance v6, Landroid/util/SparseIntArray;

    invoke-direct {v6}, Landroid/util/SparseIntArray;-><init>()V

    .line 504
    .local v6, typeCount:Landroid/util/SparseIntArray;
    iget-object v7, p1, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 506
    .local v3, mimeEntries:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    if-nez v3, :cond_0

    .line 536
    :goto_0
    return-object v6

    .line 510
    :cond_0
    const/4 v4, 0x0

    .line 512
    .local v4, totalCount:I
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 516
    .local v1, entry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 518
    add-int/lit8 v4, v4, 0x1

    .line 522
    invoke-static {v1, p1}, Lcom/android/contacts/model/EntityModifier;->getCurrentType(Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v5

    .line 524
    .local v5, type:Lcom/android/contacts/model/AccountType$EditType;
    if-eqz v5, :cond_1

    .line 526
    iget v7, v5, Lcom/android/contacts/model/AccountType$EditType;->rawValue:I

    invoke-virtual {v6, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 528
    .local v0, count:I
    iget v7, v5, Lcom/android/contacts/model/AccountType$EditType;->rawValue:I

    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_1

    .line 534
    .end local v0           #count:I
    .end local v1           #entry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v5           #type:Lcom/android/contacts/model/AccountType$EditType;
    :cond_2
    const/high16 v7, -0x8000

    invoke-virtual {v6, v7, v4}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0
.end method

.method public static getValidTypes(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;)Ljava/util/ArrayList;
    .locals 2
    .parameter "state"
    .parameter "kind"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/model/EntityDelta;",
            "Lcom/android/contacts/model/DataKind;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/AccountType$EditType;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 353
    const/4 v0, 0x1

    invoke-static {p0, p1, v1, v0, v1}, Lcom/android/contacts/model/EntityModifier;->getValidTypes(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/AccountType$EditType;ZLandroid/util/SparseIntArray;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getValidTypes(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/AccountType$EditType;)Ljava/util/ArrayList;
    .locals 2
    .parameter "state"
    .parameter "kind"
    .parameter "forceInclude"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/model/EntityDelta;",
            "Lcom/android/contacts/model/DataKind;",
            "Lcom/android/contacts/model/AccountType$EditType;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/AccountType$EditType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 381
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/contacts/model/EntityModifier;->getValidTypes(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/AccountType$EditType;ZLandroid/util/SparseIntArray;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private static getValidTypes(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/AccountType$EditType;ZLandroid/util/SparseIntArray;)Ljava/util/ArrayList;
    .locals 10
    .parameter "state"
    .parameter "kind"
    .parameter "forceInclude"
    .parameter "includeSecondary"
    .parameter "typeCount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/model/EntityDelta;",
            "Lcom/android/contacts/model/DataKind;",
            "Lcom/android/contacts/model/AccountType$EditType;",
            "Z",
            "Landroid/util/SparseIntArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/AccountType$EditType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 419
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 425
    .local v7, validTypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/AccountType$EditType;>;"
    invoke-static {p1}, Lcom/android/contacts/model/EntityModifier;->hasEditTypes(Lcom/android/contacts/model/DataKind;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 474
    :cond_0
    return-object v7

    .line 429
    :cond_1
    if-nez p4, :cond_2

    .line 433
    invoke-static {p0, p1}, Lcom/android/contacts/model/EntityModifier;->getTypeFrequencies(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;)Landroid/util/SparseIntArray;

    move-result-object p4

    .line 441
    :cond_2
    const/high16 v8, -0x8000

    invoke-virtual {p4, v8}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    .line 443
    .local v2, overallCount:I
    iget-object v8, p1, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/AccountType$EditType;

    .line 450
    .local v3, type:Lcom/android/contacts/model/AccountType$EditType;
    iget v8, p1, Lcom/android/contacts/model/DataKind;->typeOverallMax:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_5

    const/4 v4, 0x1

    .line 454
    .local v4, validOverall:Z
    :goto_1
    iget v8, v3, Lcom/android/contacts/model/AccountType$EditType;->specificMax:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_7

    const/4 v6, 0x1

    .line 458
    .local v6, validSpecific:Z
    :goto_2
    if-eqz p3, :cond_9

    const/4 v5, 0x1

    .line 460
    .local v5, validSecondary:Z
    :goto_3
    invoke-virtual {v3, p2}, Lcom/android/contacts/model/AccountType$EditType;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 462
    .local v0, forcedInclude:Z
    if-nez v0, :cond_4

    if-eqz v4, :cond_3

    if-eqz v6, :cond_3

    if-eqz v5, :cond_3

    .line 466
    :cond_4
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 450
    .end local v0           #forcedInclude:Z
    .end local v4           #validOverall:Z
    .end local v5           #validSecondary:Z
    .end local v6           #validSpecific:Z
    :cond_5
    iget v8, p1, Lcom/android/contacts/model/DataKind;->typeOverallMax:I

    if-gt v2, v8, :cond_6

    const/4 v4, 0x1

    goto :goto_1

    :cond_6
    const/4 v4, 0x0

    goto :goto_1

    .line 454
    .restart local v4       #validOverall:Z
    :cond_7
    iget v8, v3, Lcom/android/contacts/model/AccountType$EditType;->rawValue:I

    invoke-virtual {p4, v8}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    iget v9, v3, Lcom/android/contacts/model/AccountType$EditType;->specificMax:I

    if-ge v8, v9, :cond_8

    const/4 v6, 0x1

    goto :goto_2

    :cond_8
    const/4 v6, 0x0

    goto :goto_2

    .line 458
    .restart local v6       #validSpecific:Z
    :cond_9
    iget-boolean v8, v3, Lcom/android/contacts/model/AccountType$EditType;->secondary:Z

    if-nez v8, :cond_a

    const/4 v5, 0x1

    goto :goto_3

    :cond_a
    const/4 v5, 0x0

    goto :goto_3
.end method

.method private static hasChanges(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;)Z
    .locals 10
    .parameter "state"
    .parameter "accountType"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1020
    invoke-virtual {p1}, Lcom/android/contacts/model/AccountType;->getSortedDataKinds()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/model/DataKind;

    .line 1022
    .local v5, kind:Lcom/android/contacts/model/DataKind;
    iget-object v6, v5, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    .line 1024
    .local v6, mimeType:Ljava/lang/String;
    invoke-virtual {p0, v6}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1026
    .local v0, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    if-eqz v0, :cond_0

    .line 1030
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 1036
    .local v1, entry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isInsert()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-static {v1, v5}, Lcom/android/contacts/model/EntityModifier;->isEmpty(Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/DataKind;)Z

    move-result v9

    if-nez v9, :cond_3

    move v4, v7

    .line 1038
    .local v4, isRealInsert:Z
    :goto_0
    if-nez v4, :cond_2

    invoke-virtual {v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isUpdate()Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isDelete()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1048
    .end local v0           #entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    .end local v1           #entry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #isRealInsert:Z
    .end local v5           #kind:Lcom/android/contacts/model/DataKind;
    .end local v6           #mimeType:Ljava/lang/String;
    :cond_2
    :goto_1
    return v7

    .restart local v0       #entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    .restart local v1       #entry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v5       #kind:Lcom/android/contacts/model/DataKind;
    .restart local v6       #mimeType:Ljava/lang/String;
    :cond_3
    move v4, v8

    .line 1036
    goto :goto_0

    .end local v0           #entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    .end local v1           #entry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #kind:Lcom/android/contacts/model/DataKind;
    .end local v6           #mimeType:Ljava/lang/String;
    :cond_4
    move v7, v8

    .line 1048
    goto :goto_1
.end method

.method public static hasChanges(Lcom/android/contacts/model/EntityDeltaList;Lcom/android/contacts/model/AccountTypeManager;)Z
    .locals 8
    .parameter "set"
    .parameter "accountTypes"

    .prologue
    const/4 v6, 0x1

    .line 896
    invoke-virtual {p0}, Lcom/android/contacts/model/EntityDeltaList;->isMarkedForSplitting()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/model/EntityDeltaList;->isMarkedForJoining()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 922
    :cond_0
    :goto_0
    return v6

    .line 904
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/EntityDelta;

    .line 906
    .local v3, state:Lcom/android/contacts/model/EntityDelta;
    invoke-virtual {v3}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v5

    .line 908
    .local v5, values:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    const-string v7, "account_type"

    invoke-virtual {v5, v7}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 910
    .local v0, accountType:Ljava/lang/String;
    const-string v7, "data_set"

    invoke-virtual {v5, v7}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 912
    .local v1, dataSet:Ljava/lang/String;
    invoke-virtual {p1, v0, v1}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v4

    .line 914
    .local v4, type:Lcom/android/contacts/model/AccountType;
    invoke-static {v3, v4}, Lcom/android/contacts/model/EntityModifier;->hasChanges(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_0

    .line 922
    .end local v0           #accountType:Ljava/lang/String;
    .end local v1           #dataSet:Ljava/lang/String;
    .end local v3           #state:Lcom/android/contacts/model/EntityDelta;
    .end local v4           #type:Lcom/android/contacts/model/AccountType;
    .end local v5           #values:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_3
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public static hasEditTypes(Lcom/android/contacts/model/DataKind;)Z
    .locals 2
    .parameter "kind"

    .prologue
    const/4 v0, 0x0

    .line 554
    if-nez p0, :cond_1

    .line 560
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static hasValidTypes(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;)Z
    .locals 2
    .parameter "state"
    .parameter "kind"

    .prologue
    const/4 v0, 0x1

    .line 223
    invoke-static {p1}, Lcom/android/contacts/model/EntityModifier;->hasEditTypes(Lcom/android/contacts/model/DataKind;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    invoke-static {p0, p1}, Lcom/android/contacts/model/EntityModifier;->getValidTypes(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 229
    :cond_0
    :goto_0
    return v0

    .line 225
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static insertChild(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .locals 3
    .parameter "state"
    .parameter "kind"

    .prologue
    const/high16 v2, -0x8000

    .line 792
    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v2}, Lcom/android/contacts/model/EntityModifier;->getBestValidType(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;ZI)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v0

    .line 794
    .local v0, bestType:Lcom/android/contacts/model/AccountType$EditType;
    if-nez v0, :cond_0

    .line 798
    const/4 v1, 0x1

    invoke-static {p0, p1, v1, v2}, Lcom/android/contacts/model/EntityModifier;->getBestValidType(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;ZI)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v0

    .line 802
    :cond_0
    invoke-static {p0, p1, v0}, Lcom/android/contacts/model/EntityModifier;->insertChild(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/AccountType$EditType;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v1

    return-object v1
.end method

.method public static insertChild(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/AccountType$EditType;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .locals 4
    .parameter "state"
    .parameter "kind"
    .parameter "type"

    .prologue
    .line 820
    if-nez p1, :cond_0

    const/4 v1, 0x0

    .line 856
    :goto_0
    return-object v1

    .line 822
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 828
    .local v0, after:Landroid/content/ContentValues;
    const-string v2, "mimetype"

    iget-object v3, p1, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    iget-object v2, p1, Lcom/android/contacts/model/DataKind;->defaultValues:Landroid/content/ContentValues;

    if-eqz v2, :cond_1

    .line 836
    iget-object v2, p1, Lcom/android/contacts/model/DataKind;->defaultValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 842
    :cond_1
    iget-object v2, p1, Lcom/android/contacts/model/DataKind;->typeColumn:Ljava/lang/String;

    if-eqz v2, :cond_2

    if-eqz p2, :cond_2

    .line 846
    iget-object v2, p1, Lcom/android/contacts/model/DataKind;->typeColumn:Ljava/lang/String;

    iget v3, p2, Lcom/android/contacts/model/AccountType$EditType;->rawValue:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 852
    :cond_2
    invoke-static {v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v1

    .line 854
    .local v1, child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {p0, v1}, Lcom/android/contacts/model/EntityDelta;->addEntry(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    goto :goto_0
.end method

.method public static isEmpty(Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/DataKind;)Z
    .locals 7
    .parameter "values"
    .parameter "kind"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1064
    const-string v5, "vnd.android.cursor.item/photo"

    iget-object v6, p1, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1066
    invoke-virtual {p0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isInsert()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "data15"

    invoke-virtual {p0, v5}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v5

    if-nez v5, :cond_1

    .line 1094
    :cond_0
    :goto_0
    return v3

    :cond_1
    move v3, v4

    .line 1066
    goto :goto_0

    .line 1074
    :cond_2
    iget-object v5, p1, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    if-eqz v5, :cond_0

    .line 1078
    iget-object v5, p1, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountType$EditField;

    .line 1082
    .local v0, field:Lcom/android/contacts/model/AccountType$EditField;
    iget-object v5, v0, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1084
    .local v2, value:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v3, v4

    .line 1086
    goto :goto_0
.end method

.method private static isTypeAllowed(ILjava/util/ArrayList;Lcom/android/contacts/model/DataKind;)Z
    .locals 7
    .parameter "type"
    .parameter
    .parameter "kind"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/EntityDelta$ValuesDelta;",
            ">;",
            "Lcom/android/contacts/model/DataKind;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2265
    const/4 v2, 0x0

    .line 2267
    .local v2, max:I
    iget-object v6, p2, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    .line 2269
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 2271
    iget-object v6, p2, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountType$EditType;

    .line 2273
    .local v0, editType:Lcom/android/contacts/model/AccountType$EditType;
    iget v6, v0, Lcom/android/contacts/model/AccountType$EditType;->rawValue:I

    if-ne v6, p0, :cond_2

    .line 2275
    iget v2, v0, Lcom/android/contacts/model/AccountType$EditType;->specificMax:I

    .line 2285
    .end local v0           #editType:Lcom/android/contacts/model/AccountType$EditType;
    :cond_0
    if-nez v2, :cond_3

    move v4, v5

    .line 2305
    :cond_1
    :goto_1
    return v4

    .line 2269
    .restart local v0       #editType:Lcom/android/contacts/model/AccountType$EditType;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2295
    .end local v0           #editType:Lcom/android/contacts/model/AccountType$EditType;
    :cond_3
    const/4 v6, -0x1

    if-eq v2, v6, :cond_1

    .line 2305
    iget-object v6, p2, Lcom/android/contacts/model/DataKind;->typeColumn:Ljava/lang/String;

    invoke-static {p1, v6, p0}, Lcom/android/contacts/model/EntityModifier;->getEntryCountByType(Ljava/util/ArrayList;Ljava/lang/String;I)I

    move-result v6

    if-lt v6, v2, :cond_1

    move v4, v5

    goto :goto_1
.end method

.method public static migrateEvent(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Ljava/lang/Integer;)V
    .locals 21
    .parameter "oldState"
    .parameter "newState"
    .parameter "newDataKind"
    .parameter "defaultYear"

    .prologue
    .line 3373
    const-string v3, "vnd.android.cursor.item/contact_event"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v3}, Lcom/android/contacts/model/EntityModifier;->ensureEntryMaxSize(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v15

    .line 3377
    .local v15, mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    if-eqz v15, :cond_0

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3473
    :cond_0
    return-void

    .line 3385
    :cond_1
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 3387
    .local v9, allowedTypes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/android/contacts/model/AccountType$EventEditType;>;"
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/contacts/model/AccountType$EditType;

    .line 3389
    .local v12, editType:Lcom/android/contacts/model/AccountType$EditType;
    iget v3, v12, Lcom/android/contacts/model/AccountType$EditType;->rawValue:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast v12, Lcom/android/contacts/model/AccountType$EventEditType;

    .end local v12           #editType:Lcom/android/contacts/model/AccountType$EditType;
    invoke-interface {v9, v3, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3393
    :cond_2
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_3
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 3395
    .local v13, entry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v13}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v19

    .line 3397
    .local v19, values:Landroid/content/ContentValues;
    if-eqz v19, :cond_3

    .line 3403
    const-string v3, "data1"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 3405
    .local v11, dateString:Ljava/lang/String;
    const-string v3, "data2"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    .line 3407
    .local v18, type:Ljava/lang/Integer;
    if-eqz v18, :cond_3

    move-object/from16 v0, v18

    invoke-interface {v9, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 3409
    move-object/from16 v0, v18

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/contacts/model/AccountType$EventEditType;

    .line 3413
    .local v17, suitableType:Lcom/android/contacts/model/AccountType$EventEditType;
    new-instance v16, Ljava/text/ParsePosition;

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Ljava/text/ParsePosition;-><init>(I)V

    .line 3415
    .local v16, position:Ljava/text/ParsePosition;
    const/16 v20, 0x0

    .line 3417
    .local v20, yearOptional:Z
    sget-object v3, Lcom/android/contacts/util/DateUtils;->DATE_AND_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    move-object/from16 v0, v16

    invoke-virtual {v3, v11, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v10

    .line 3419
    .local v10, date:Ljava/util/Date;
    if-nez v10, :cond_4

    .line 3421
    const/16 v20, 0x1

    .line 3423
    sget-object v3, Lcom/android/contacts/util/DateUtils;->NO_YEAR_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    move-object/from16 v0, v16

    invoke-virtual {v3, v11, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v10

    .line 3427
    :cond_4
    if-eqz v10, :cond_6

    .line 3429
    if-eqz v20, :cond_6

    invoke-virtual/range {v17 .. v17}, Lcom/android/contacts/model/AccountType$EventEditType;->isYearOptional()Z

    move-result v3

    if-nez v3, :cond_6

    .line 3433
    sget-object v3, Lcom/android/contacts/util/DateUtils;->UTC_TIMEZONE:Ljava/util/TimeZone;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v3, v6}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 3437
    .local v2, calendar:Ljava/util/Calendar;
    if-nez p3, :cond_5

    .line 3439
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 3443
    :cond_5
    invoke-virtual {v2, v10}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 3445
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 3447
    .local v4, month:I
    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 3451
    .local v5, day:I
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {}, Lcom/android/contacts/editor/EventFieldEditorView;->getDefaultHourForBirthday()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Ljava/util/Calendar;->set(IIIIII)V

    .line 3455
    const-string v3, "data1"

    sget-object v6, Lcom/android/contacts/util/DateUtils;->FULL_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3463
    .end local v2           #calendar:Ljava/util/Calendar;
    .end local v4           #month:I
    .end local v5           #day:I
    :cond_6
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/EntityDelta;->addEntry(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    goto/16 :goto_1
.end method

.method public static migrateGenericWithTypeColumn(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Z)V
    .locals 15
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3517
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 3519
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3739
    :cond_0
    return-void

    .line 3563
    :cond_1
    const/4 v1, 0x0

    .line 3565
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/contacts/model/DataKind;->defaultValues:Landroid/content/ContentValues;

    if-eqz v2, :cond_13

    .line 3567
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/android/contacts/model/DataKind;->defaultValues:Landroid/content/ContentValues;

    const-string v2, "data2"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    move-object v2, v1

    .line 3571
    :goto_0
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 3575
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 3577
    if-eqz v2, :cond_2

    .line 3579
    invoke-interface {v9, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3581
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v10, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3593
    :cond_2
    const-string v1, "vnd.android.cursor.item/im"

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    if-eqz v1, :cond_12

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_12

    .line 3597
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/AccountType$EditType;

    .line 3599
    iget v4, v1, Lcom/android/contacts/model/AccountType$EditType;->rawValue:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v9, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3601
    iget v4, v1, Lcom/android/contacts/model/AccountType$EditType;->rawValue:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v1, v1, Lcom/android/contacts/model/AccountType$EditType;->specificMax:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v10, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 3605
    :cond_3
    if-nez v2, :cond_12

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    if-eqz v1, :cond_12

    .line 3607
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/AccountType$EditType;

    iget v1, v1, Lcom/android/contacts/model/AccountType$EditType;->rawValue:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v8, v2

    .line 3615
    :goto_2
    if-nez v8, :cond_4

    .line 3617
    const-string v1, "EntityModifier"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Default type isn\'t available for mimetype "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 3623
    :cond_4
    move-object/from16 v0, p2

    iget-boolean v1, v0, Lcom/android/contacts/model/DataKind;->isList:Z

    if-eqz v1, :cond_b

    move-object/from16 v0, p2

    iget v1, v0, Lcom/android/contacts/model/DataKind;->typeOverallMax:I

    move v2, v1

    .line 3629
    :goto_3
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 3631
    const/4 v4, 0x0

    .line 3635
    const/4 v3, 0x0

    .line 3637
    const/4 v1, 0x0

    .line 3639
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move v5, v4

    move v4, v3

    move v3, v1

    :cond_5
    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 3641
    if-eqz p3, :cond_6

    const/4 v6, 0x1

    if-ge v4, v6, :cond_5

    .line 3643
    :cond_6
    if-eqz p3, :cond_7

    const/4 v6, 0x1

    if-ge v3, v6, :cond_5

    .line 3647
    :cond_7
    const/4 v6, -0x1

    if-eq v2, v6, :cond_8

    if-ge v5, v2, :cond_0

    .line 3655
    :cond_8
    invoke-virtual {v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v13

    .line 3657
    if-eqz v13, :cond_5

    .line 3665
    const-string v6, "data2"

    invoke-virtual {v1, v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 3669
    invoke-interface {v9, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 3673
    if-eqz v8, :cond_c

    .line 3675
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 3677
    const-string v7, "data2"

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v7, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3679
    if-eqz v6, :cond_11

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_11

    .line 3681
    const-string v6, "data3"

    invoke-virtual {v13, v6}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    move-object v7, v1

    .line 3699
    :goto_5
    if-eqz v7, :cond_9

    .line 3701
    invoke-interface {v10, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v10, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v6, v1

    .line 3705
    :goto_6
    if-ltz v6, :cond_9

    .line 3707
    invoke-interface {v11, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-interface {v11, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3711
    :goto_7
    if-ge v1, v6, :cond_5

    .line 3717
    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v11, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3723
    :cond_9
    invoke-static {v13}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/EntityDelta;->addEntry(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 3725
    add-int/lit8 v5, v5, 0x1

    .line 3729
    const-string v1, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 3731
    add-int/lit8 v4, v4, 0x1

    .line 3733
    :cond_a
    const-string v1, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 3735
    add-int/lit8 v1, v3, 0x1

    :goto_8
    move v3, v1

    .line 3737
    goto/16 :goto_4

    .line 3623
    :cond_b
    const/4 v1, 0x1

    move v2, v1

    goto/16 :goto_3

    .line 3687
    :cond_c
    const/4 v1, 0x0

    .line 3689
    const-string v6, "data2"

    invoke-virtual {v13, v6}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    move-object v7, v1

    goto :goto_5

    :cond_d
    move-object v7, v6

    .line 3695
    goto :goto_5

    .line 3701
    :cond_e
    const/4 v1, 0x0

    move v6, v1

    goto :goto_6

    .line 3707
    :cond_f
    const/4 v1, 0x0

    goto :goto_7

    :cond_10
    move v1, v3

    goto :goto_8

    :cond_11
    move-object v7, v1

    goto :goto_5

    :cond_12
    move-object v8, v2

    goto/16 :goto_2

    :cond_13
    move-object v2, v1

    goto/16 :goto_0
.end method

.method public static migrateGenericWithoutTypeColumn(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;)V
    .locals 5
    .parameter "oldState"
    .parameter "newState"
    .parameter "newDataKind"

    .prologue
    .line 3483
    iget-object v4, p2, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {p1, p2, v4}, Lcom/android/contacts/model/EntityModifier;->ensureEntryMaxSize(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    .line 3487
    .local v2, mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3507
    :cond_0
    return-void

    .line 3495
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 3497
    .local v0, entry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v3

    .line 3499
    .local v3, values:Landroid/content/ContentValues;
    if-eqz v3, :cond_2

    .line 3501
    invoke-static {v3}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/contacts/model/EntityDelta;->addEntry(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    goto :goto_0
.end method

.method public static migratePostal(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;)V
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3151
    const-string v0, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/android/contacts/model/EntityModifier;->ensureEntryMaxSize(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    .line 3155
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3363
    :cond_0
    return-void

    .line 3163
    :cond_1
    const/4 v2, 0x0

    .line 3165
    const/4 v1, 0x0

    .line 3167
    iget-object v0, p2, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountType$EditField;

    iget-object v4, v0, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    .line 3169
    iget-object v0, p2, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountType$EditField;

    .line 3171
    const-string v6, "data1"

    iget-object v7, v0, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3173
    const/4 v2, 0x1

    .line 3177
    :cond_2
    const-string v6, "data4"

    iget-object v0, v0, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3179
    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    .line 3187
    :cond_3
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 3189
    iget-object v0, p2, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p2, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3191
    iget-object v0, p2, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountType$EditType;

    .line 3193
    iget v0, v0, Lcom/android/contacts/model/AccountType$EditType;->rawValue:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3201
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 3203
    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v7

    .line 3205
    if-eqz v7, :cond_5

    .line 3211
    const-string v0, "data2"

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 3213
    invoke-interface {v5, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 3217
    iget-object v0, p2, Lcom/android/contacts/model/DataKind;->defaultValues:Landroid/content/ContentValues;

    if-eqz v0, :cond_8

    .line 3219
    iget-object v0, p2, Lcom/android/contacts/model/DataKind;->defaultValues:Landroid/content/ContentValues;

    const-string v8, "data2"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3227
    :goto_4
    const-string v8, "data2"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3229
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_6

    .line 3231
    const-string v0, "data3"

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 3239
    :cond_6
    const-string v0, "data1"

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3241
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 3243
    if-nez v2, :cond_7

    .line 3247
    const-string v3, "data1"

    invoke-virtual {v7, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 3257
    if-eqz v1, :cond_9

    .line 3259
    const-string v3, "data4"

    invoke-virtual {v7, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3359
    :cond_7
    :goto_5
    invoke-static {v7}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/contacts/model/EntityDelta;->addEntry(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    goto :goto_3

    .line 3223
    :cond_8
    iget-object v0, p2, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v8, 0x0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountType$EditType;

    iget v0, v0, Lcom/android/contacts/model/AccountType$EditType;->rawValue:I

    goto :goto_4

    .line 3263
    :cond_9
    invoke-virtual {v7, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 3271
    :cond_a
    if-eqz v2, :cond_7

    .line 3281
    sget-object v0, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 3285
    if-eqz v0, :cond_c

    .line 3287
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v8, "data10"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v3

    const/4 v3, 0x1

    const-string v8, "data9"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v3

    const/4 v3, 0x2

    const-string v8, "data8"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v3

    const/4 v3, 0x3

    const-string v8, "data7"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v3

    const/4 v3, 0x4

    const-string v8, "data6"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v3

    const/4 v3, 0x5

    const-string v8, "data4"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v3

    const/4 v3, 0x6

    const-string v8, "data5"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v3

    .line 3323
    :goto_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 3325
    array-length v9, v0

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v9, :cond_d

    aget-object v10, v0, v3

    .line 3327
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_b

    .line 3329
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3325
    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 3305
    :cond_c
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v8, "data5"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v3

    const/4 v3, 0x1

    const-string v8, "data4"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v3

    const/4 v3, 0x2

    const-string v8, "data6"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v3

    const/4 v3, 0x3

    const-string v8, "data7"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v3

    const/4 v3, 0x4

    const-string v8, "data8"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v3

    const/4 v3, 0x5

    const-string v8, "data9"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v3

    const/4 v3, 0x6

    const-string v8, "data10"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v3

    goto :goto_6

    .line 3335
    :cond_d
    const-string v0, "data1"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3339
    const-string v0, "data5"

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 3341
    const-string v0, "data4"

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 3343
    const-string v0, "data6"

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 3345
    const-string v0, "data7"

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 3347
    const-string v0, "data8"

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 3349
    const-string v0, "data9"

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 3351
    const-string v0, "data10"

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_e
    move v0, v1

    goto/16 :goto_1
.end method

.method public static migrateStateForNewContact(Landroid/content/Context;Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Lcom/android/contacts/model/AccountType;)V
    .locals 20
    .parameter "context"
    .parameter "oldState"
    .parameter "newState"
    .parameter "oldAccountType"
    .parameter "newAccountType"

    .prologue
    .line 2719
    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v15

    .line 2723
    .local v15, simManager:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    const/4 v9, 0x0

    .line 2725
    .local v9, isEmailFull:Z
    const/4 v11, 0x0

    .line 2727
    .local v11, isSIMAccount:Z
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v17

    if-nez v17, :cond_0

    .line 2729
    :cond_0
    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/android/contacts/model/AccountType;->accountType:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isEmailFull(Ljava/lang/String;)Z

    move-result v9

    .line 2731
    const-string v17, "vnd.sec.contact.sim"

    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/android/contacts/model/AccountType;->accountType:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1

    const-string v17, "vnd.sec.contact.sim2"

    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/android/contacts/model/AccountType;->accountType:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 2735
    :cond_1
    const/4 v11, 0x1

    .line 2751
    :cond_2
    const/4 v8, 0x0

    .line 2755
    .local v8, isEmail2Full:Z
    const/4 v10, 0x0

    .line 2761
    .local v10, isSIM2Account:Z
    sget v17, Lcom/android/contacts/model/EntityModifier;->SIM_ONE:I

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isEmailFull(I)Z

    move-result v8

    .line 2763
    const-string v17, "vnd.sec.contact.sim2"

    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/android/contacts/model/AccountType;->accountType:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 2769
    move-object/from16 v0, p4

    move-object/from16 v1, p3

    if-ne v0, v1, :cond_6

    .line 2775
    invoke-virtual/range {p4 .. p4}, Lcom/android/contacts/model/AccountType;->getSortedDataKinds()Ljava/util/ArrayList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_14

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/contacts/model/DataKind;

    .line 2777
    .local v12, kind:Lcom/android/contacts/model/DataKind;
    iget-object v13, v12, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    .line 2781
    .local v13, mimeType:Ljava/lang/String;
    const-string v17, "vnd.android.cursor.item/name"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 2783
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2, v12}, Lcom/android/contacts/model/EntityModifier;->migrateStructuredName(Landroid/content/Context;Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;)V

    goto :goto_0

    .line 2787
    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 2789
    .local v5, entryList:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    if-eqz v5, :cond_3

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_3

    .line 2791
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 2793
    .local v4, entry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v16

    .line 2795
    .local v16, values:Landroid/content/ContentValues;
    if-eqz v16, :cond_5

    .line 2797
    invoke-static/range {v16 .. v16}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/EntityDelta;->addEntry(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    goto :goto_1

    .line 2815
    .end local v4           #entry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v5           #entryList:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v12           #kind:Lcom/android/contacts/model/DataKind;
    .end local v13           #mimeType:Ljava/lang/String;
    .end local v16           #values:Landroid/content/ContentValues;
    :cond_6
    const/4 v14, 0x0

    .line 2817
    .local v14, numberCount:I
    const/4 v3, 0x0

    .line 2821
    .local v3, emailCount:I
    invoke-virtual/range {p4 .. p4}, Lcom/android/contacts/model/AccountType;->getSortedDataKinds()Ljava/util/ArrayList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_7
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_14

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/contacts/model/DataKind;

    .line 2823
    .restart local v12       #kind:Lcom/android/contacts/model/DataKind;
    iget-boolean v0, v12, Lcom/android/contacts/model/DataKind;->editable:Z

    move/from16 v17, v0

    if-eqz v17, :cond_7

    .line 2825
    iget-object v13, v12, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    .line 2827
    .restart local v13       #mimeType:Ljava/lang/String;
    if-eqz v11, :cond_8

    if-eqz v9, :cond_8

    const-string v17, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_7

    .line 2831
    :cond_8
    if-eqz v10, :cond_9

    if-eqz v8, :cond_9

    const-string v17, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_7

    .line 2837
    :cond_9
    const-string v17, "#displayName"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_7

    const-string v17, "#phoneticName"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_7

    .line 2845
    const-string v17, "vnd.android.cursor.item/name"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 2847
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2, v12}, Lcom/android/contacts/model/EntityModifier;->migrateStructuredName(Landroid/content/Context;Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;)V

    goto :goto_2

    .line 2849
    :cond_a
    const-string v17, "vnd.android.cursor.item/postal-address_v2"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 2851
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v12}, Lcom/android/contacts/model/EntityModifier;->migratePostal(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;)V

    goto :goto_2

    .line 2853
    :cond_b
    const-string v17, "vnd.android.cursor.item/contact_event"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 2855
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v17

    invoke-static {v0, v1, v12, v2}, Lcom/android/contacts/model/EntityModifier;->migrateEvent(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Ljava/lang/Integer;)V

    goto :goto_2

    .line 2857
    :cond_c
    sget-object v17, Lcom/android/contacts/model/EntityModifier;->sGenericMimeTypesWithoutTypeSupport:Ljava/util/Set;

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_d

    .line 2859
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v12}, Lcom/android/contacts/model/EntityModifier;->migrateGenericWithoutTypeColumn(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;)V

    goto/16 :goto_2

    .line 2861
    :cond_d
    sget-object v17, Lcom/android/contacts/model/EntityModifier;->sGenericMimeTypesWithTypeSupport:Ljava/util/Set;

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_10

    .line 2863
    if-nez v11, :cond_e

    if-eqz v10, :cond_f

    :cond_e
    const/16 v17, 0x1

    :goto_3
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, v17

    invoke-static {v0, v1, v12, v2}, Lcom/android/contacts/model/EntityModifier;->migrateGenericWithTypeColumn(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Z)V

    goto/16 :goto_2

    :cond_f
    const/16 v17, 0x0

    goto :goto_3

    .line 2865
    :cond_10
    const-string v17, "vnd.android.cursor.item/ringtone"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_11

    .line 2867
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v12, v11}, Lcom/android/contacts/model/EntityModifier;->migrateGenericWithTypeColumn(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Z)V

    goto/16 :goto_2

    .line 2869
    :cond_11
    const-string v17, "vnd.android.cursor.item/alerttone"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_12

    .line 2871
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v12, v11}, Lcom/android/contacts/model/EntityModifier;->migrateGenericWithTypeColumn(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Z)V

    goto/16 :goto_2

    .line 2873
    :cond_12
    const-string v17, "vnd.android.cursor.item/vibration"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_13

    .line 2875
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v12, v11}, Lcom/android/contacts/model/EntityModifier;->migrateGenericWithTypeColumn(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Z)V

    goto/16 :goto_2

    .line 2879
    :cond_13
    new-instance v17, Ljava/lang/IllegalStateException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Unexpected editable mime-type: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 2887
    .end local v3           #emailCount:I
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v12           #kind:Lcom/android/contacts/model/DataKind;
    .end local v13           #mimeType:Ljava/lang/String;
    .end local v14           #numberCount:I
    :cond_14
    return-void
.end method

.method public static migrateStructuredName(Landroid/content/Context;Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;)V
    .locals 19
    .parameter "context"
    .parameter "oldState"
    .parameter "newState"
    .parameter "newDataKind"

    .prologue
    .line 2945
    const-string v15, "vnd.android.cursor.item/name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/android/contacts/model/EntityDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v14

    .line 2949
    .local v14, values:Landroid/content/ContentValues;
    if-nez v14, :cond_0

    .line 3141
    :goto_0
    return-void

    .line 2957
    :cond_0
    const/4 v8, 0x0

    .line 2959
    .local v8, supportDisplayName:Z
    const/4 v10, 0x0

    .line 2961
    .local v10, supportPhoneticFullName:Z
    const/4 v9, 0x0

    .line 2963
    .local v9, supportPhoneticFamilyName:Z
    const/4 v12, 0x0

    .line 2965
    .local v12, supportPhoneticMiddleName:Z
    const/4 v11, 0x0

    .line 2967
    .local v11, supportPhoneticGivenName:Z
    move-object/from16 v0, p3

    iget-object v15, v0, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/AccountType$EditField;

    .line 2969
    .local v3, editField:Lcom/android/contacts/model/AccountType$EditField;
    const-string v15, "data1"

    iget-object v0, v3, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 2971
    const/4 v8, 0x1

    .line 2975
    :cond_2
    const-string v15, "#phoneticName"

    iget-object v0, v3, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 2977
    const/4 v10, 0x1

    .line 2981
    :cond_3
    const-string v15, "data9"

    iget-object v0, v3, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 2983
    const/4 v9, 0x1

    .line 2987
    :cond_4
    const-string v15, "data8"

    iget-object v0, v3, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 2989
    const/4 v12, 0x1

    .line 2993
    :cond_5
    const-string v15, "data7"

    iget-object v0, v3, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 2995
    const/4 v11, 0x1

    goto :goto_1

    .line 3005
    .end local v3           #editField:Lcom/android/contacts/model/AccountType$EditField;
    :cond_6
    const-string v15, "data1"

    invoke-virtual {v14, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3007
    .local v2, displayName:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_9

    .line 3009
    if-nez v8, :cond_7

    .line 3013
    move-object/from16 v0, p0

    invoke-static {v0, v2, v14}, Lcom/android/contacts/util/NameConverter;->displayNameToStructuredName(Landroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    .line 3019
    const-string v15, "data1"

    invoke-virtual {v14, v15}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 3047
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_7
    const-string v15, "#phoneticName"

    invoke-virtual {v14, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3049
    .local v7, phoneticFullName:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_d

    .line 3051
    if-nez v10, :cond_8

    .line 3055
    const/4 v15, 0x0

    invoke-static {v7, v15}, Lcom/android/contacts/editor/PhoneticNameEditorView;->parsePhoneticName(Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v13

    .line 3059
    .local v13, tmpValues:Landroid/content/ContentValues;
    const-string v15, "#phoneticName"

    invoke-virtual {v14, v15}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 3061
    if-eqz v9, :cond_a

    .line 3063
    const-string v15, "data9"

    const-string v16, "data9"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3073
    :goto_2
    if-eqz v12, :cond_b

    .line 3075
    const-string v15, "data8"

    const-string v16, "data8"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3085
    :goto_3
    if-eqz v11, :cond_c

    .line 3087
    const-string v15, "data7"

    const-string v16, "data7"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3139
    .end local v13           #tmpValues:Landroid/content/ContentValues;
    :cond_8
    :goto_4
    invoke-static {v14}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/android/contacts/model/EntityDelta;->addEntry(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    goto/16 :goto_0

    .line 3025
    .end local v7           #phoneticFullName:Ljava/lang/String;
    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_9
    if-eqz v8, :cond_7

    .line 3029
    const-string v15, "data1"

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/android/contacts/util/NameConverter;->structuredNameToDisplayName(Landroid/content/Context;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3033
    sget-object v1, Lcom/android/contacts/util/NameConverter;->STRUCTURED_NAME_FIELDS:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_5
    if-ge v5, v6, :cond_7

    aget-object v4, v1, v5

    .line 3035
    .local v4, field:Ljava/lang/String;
    invoke-virtual {v14, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 3033
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 3069
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v4           #field:Ljava/lang/String;
    .end local v5           #i$:I
    .end local v6           #len$:I
    .restart local v7       #phoneticFullName:Ljava/lang/String;
    .restart local v13       #tmpValues:Landroid/content/ContentValues;
    :cond_a
    const-string v15, "data9"

    invoke-virtual {v14, v15}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_2

    .line 3081
    :cond_b
    const-string v15, "data8"

    invoke-virtual {v14, v15}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_3

    .line 3093
    :cond_c
    const-string v15, "data7"

    invoke-virtual {v14, v15}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_4

    .line 3101
    .end local v13           #tmpValues:Landroid/content/ContentValues;
    :cond_d
    if-eqz v10, :cond_e

    .line 3105
    const-string v15, "#phoneticName"

    const-string v16, "data9"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v17, "data8"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "data7"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v16 .. v18}, Lcom/android/contacts/editor/PhoneticNameEditorView;->buildPhoneticName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3117
    :cond_e
    if-nez v9, :cond_f

    .line 3119
    const-string v15, "data9"

    invoke-virtual {v14, v15}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 3123
    :cond_f
    if-nez v12, :cond_10

    .line 3125
    const-string v15, "data8"

    invoke-virtual {v14, v15}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 3129
    :cond_10
    if-nez v11, :cond_8

    .line 3131
    const-string v15, "data7"

    invoke-virtual {v14, v15}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_4
.end method

.method public static parseExtras(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .locals 9
    .parameter "state"
    .parameter "kind"
    .parameter "extras"
    .parameter "typeExtra"
    .parameter "valueExtra"
    .parameter "valueColumn"

    .prologue
    .line 2417
    invoke-virtual {p2, p4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 2423
    .local v7, value:Ljava/lang/CharSequence;
    if-nez p1, :cond_1

    const/4 v1, 0x0

    .line 2469
    :cond_0
    :goto_0
    return-object v1

    .line 2429
    :cond_1
    invoke-static {p0, p1}, Lcom/android/contacts/model/EntityModifier;->canInsert(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;)Z

    move-result v0

    .line 2431
    .local v0, canInsert:Z
    if-eqz v7, :cond_3

    invoke-static {v7}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v6, 0x1

    .line 2433
    .local v6, validValue:Z
    :goto_1
    if-eqz v6, :cond_2

    if-nez v0, :cond_4

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 2431
    .end local v6           #validValue:Z
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 2439
    .restart local v6       #validValue:Z
    :cond_4
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    .line 2441
    .local v4, hasType:Z
    if-eqz v4, :cond_5

    const/4 v8, 0x0

    :goto_2
    invoke-virtual {p2, p3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 2446
    .local v5, typeValue:I
    const/4 v8, 0x1

    invoke-static {p0, p1, v8, v5}, Lcom/android/contacts/model/EntityModifier;->getBestValidType(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;ZI)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v3

    .line 2451
    .local v3, editType:Lcom/android/contacts/model/AccountType$EditType;
    invoke-static {p0, p1, v3}, Lcom/android/contacts/model/EntityModifier;->insertChild(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/AccountType$EditType;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v1

    .line 2453
    .local v1, child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, p5, v8}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2457
    if-eqz v3, :cond_0

    iget-object v8, v3, Lcom/android/contacts/model/AccountType$EditType;->customColumn:Ljava/lang/String;

    if-eqz v8, :cond_0

    .line 2461
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2463
    .local v2, customType:Ljava/lang/String;
    iget-object v8, v3, Lcom/android/contacts/model/AccountType$EditType;->customColumn:Ljava/lang/String;

    invoke-virtual {v1, v8, v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2441
    .end local v1           #child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v2           #customType:Ljava/lang/String;
    .end local v3           #editType:Lcom/android/contacts/model/AccountType$EditType;
    .end local v5           #typeValue:I
    :cond_5
    const/high16 v8, -0x8000

    goto :goto_2
.end method

.method public static parseExtras(Landroid/content/Context;Lcom/android/contacts/model/AccountType;Lcom/android/contacts/model/EntityDelta;Landroid/os/Bundle;)V
    .locals 18
    .parameter "context"
    .parameter "accountType"
    .parameter "state"
    .parameter "extras"

    .prologue
    .line 1148
    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Bundle;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 1300
    :cond_0
    :goto_0
    return-void

    .line 1158
    :cond_1
    invoke-static/range {p0 .. p3}, Lcom/android/contacts/model/EntityModifier;->parseStructuredNameExtra(Landroid/content/Context;Lcom/android/contacts/model/AccountType;Lcom/android/contacts/model/EntityDelta;Landroid/os/Bundle;)V

    .line 1160
    invoke-static/range {p1 .. p3}, Lcom/android/contacts/model/EntityModifier;->parseStructuredPostalExtra(Lcom/android/contacts/model/AccountType;Lcom/android/contacts/model/EntityDelta;Landroid/os/Bundle;)V

    .line 1168
    const-string v3, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v4

    .line 1170
    .local v4, kind:Lcom/android/contacts/model/DataKind;
    const-string v6, "phone_type"

    const-string v7, "phone"

    const-string v8, "data1"

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    invoke-static/range {v3 .. v8}, Lcom/android/contacts/model/EntityModifier;->parseExtras(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 1172
    const-string v6, "secondary_phone_type"

    const-string v7, "secondary_phone"

    const-string v8, "data1"

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    invoke-static/range {v3 .. v8}, Lcom/android/contacts/model/EntityModifier;->parseExtras(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 1176
    const-string v6, "tertiary_phone_type"

    const-string v7, "tertiary_phone"

    const-string v8, "data1"

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    invoke-static/range {v3 .. v8}, Lcom/android/contacts/model/EntityModifier;->parseExtras(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 1188
    const-string v3, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v4

    .line 1190
    const-string v6, "email_type"

    const-string v7, "email"

    const-string v8, "data1"

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    invoke-static/range {v3 .. v8}, Lcom/android/contacts/model/EntityModifier;->parseExtras(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 1192
    const-string v6, "secondary_email_type"

    const-string v7, "secondary_email"

    const-string v8, "data1"

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    invoke-static/range {v3 .. v8}, Lcom/android/contacts/model/EntityModifier;->parseExtras(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 1196
    const-string v6, "tertiary_email_type"

    const-string v7, "tertiary_email"

    const-string v8, "data1"

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    invoke-static/range {v3 .. v8}, Lcom/android/contacts/model/EntityModifier;->parseExtras(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 1208
    const-string v3, "vnd.android.cursor.item/im"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v4

    .line 1210
    invoke-static/range {p3 .. p3}, Lcom/android/contacts/model/EntityModifier;->fixupLegacyImType(Landroid/os/Bundle;)V

    .line 1212
    const-string v6, "im_protocol"

    const-string v7, "im_handle"

    const-string v8, "data1"

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    invoke-static/range {v3 .. v8}, Lcom/android/contacts/model/EntityModifier;->parseExtras(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 1222
    const-string v3, "vnd.android.cursor.item/sip_address"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v4

    .line 1224
    const-string v6, "data1"

    const-string v7, "sip"

    const-string v8, "data1"

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    invoke-static/range {v3 .. v8}, Lcom/android/contacts/model/EntityModifier;->parseExtras(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 1232
    const-string v3, "company"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "job_title"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_2
    const/4 v12, 0x1

    .line 1236
    .local v12, hasOrg:Z
    :goto_1
    const-string v3, "vnd.android.cursor.item/organization"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v14

    .line 1238
    .local v14, kindOrg:Lcom/android/contacts/model/DataKind;
    if-eqz v12, :cond_4

    move-object/from16 v0, p2

    invoke-static {v0, v14}, Lcom/android/contacts/model/EntityModifier;->canInsert(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1240
    move-object/from16 v0, p2

    invoke-static {v0, v14}, Lcom/android/contacts/model/EntityModifier;->insertChild(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v9

    .line 1244
    .local v9, child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    const-string v3, "company"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1246
    .local v10, company:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1248
    const-string v3, "data1"

    invoke-virtual {v9, v3, v10}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1254
    :cond_3
    const-string v3, "job_title"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1256
    .local v16, title:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1258
    const-string v3, "data4"

    move-object/from16 v0, v16

    invoke-virtual {v9, v3, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1268
    .end local v9           #child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v10           #company:Ljava/lang/String;
    .end local v16           #title:Ljava/lang/String;
    :cond_4
    const-string v3, "notes"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    .line 1270
    .local v11, hasNotes:Z
    const-string v3, "vnd.android.cursor.item/note"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v13

    .line 1272
    .local v13, kindNotes:Lcom/android/contacts/model/DataKind;
    if-eqz v11, :cond_5

    move-object/from16 v0, p2

    invoke-static {v0, v13}, Lcom/android/contacts/model/EntityModifier;->canInsert(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1274
    move-object/from16 v0, p2

    invoke-static {v0, v13}, Lcom/android/contacts/model/EntityModifier;->insertChild(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v9

    .line 1278
    .restart local v9       #child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    const-string v3, "notes"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1280
    .local v15, notes:Ljava/lang/String;
    invoke-static {v15}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1282
    const-string v3, "data1"

    invoke-virtual {v9, v3, v15}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1292
    .end local v9           #child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v15           #notes:Ljava/lang/String;
    :cond_5
    const-string v3, "data"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v17

    .line 1294
    .local v17, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v17, :cond_0

    .line 1296
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/android/contacts/model/EntityModifier;->parseValues(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 1232
    .end local v11           #hasNotes:Z
    .end local v12           #hasOrg:Z
    .end local v13           #kindNotes:Lcom/android/contacts/model/DataKind;
    .end local v14           #kindOrg:Lcom/android/contacts/model/DataKind;
    .end local v17           #values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_6
    const/4 v12, 0x0

    goto/16 :goto_1
.end method

.method public static parseExtrasForQRcode(Landroid/content/Context;Lcom/android/contacts/model/AccountType;Lcom/android/contacts/model/EntityDelta;Landroid/os/Bundle;IIII)V
    .locals 20
    .parameter "context"
    .parameter "accountType"
    .parameter "state"
    .parameter "extras"
    .parameter "Mnumber"
    .parameter "FAXnumber"
    .parameter "TELFIXnumber"
    .parameter "EMnumber"

    .prologue
    .line 1557
    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Bundle;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 1789
    :cond_0
    :goto_0
    return-void

    .line 1571
    :cond_1
    const-string v3, "vnd.android.cursor.item/name"

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-static {v0, v1, v3}, Lcom/android/contacts/model/EntityModifier;->ensureKindExists(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 1573
    const-string v3, "vnd.android.cursor.item/name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/EntityDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v9

    .line 1577
    .local v9, child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    const-string v3, "name"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1581
    .local v16, name:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1583
    const-string v3, "data1"

    move-object/from16 v0, v16

    invoke-virtual {v9, v3, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1595
    :cond_2
    const/4 v3, 0x1

    move/from16 v0, p4

    if-le v0, v3, :cond_3

    .line 1597
    const-string v3, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v4

    .line 1599
    .local v4, kind:Lcom/android/contacts/model/DataKind;
    const/4 v13, 0x0

    .local v13, i:I
    :goto_1
    move/from16 v0, p4

    if-ge v13, v0, :cond_4

    .line 1601
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "phone_type"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "phone"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "data1"

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    invoke-static/range {v3 .. v8}, Lcom/android/contacts/model/EntityModifier;->parseExtras(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 1599
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 1607
    .end local v4           #kind:Lcom/android/contacts/model/DataKind;
    .end local v13           #i:I
    :cond_3
    const/4 v3, 0x1

    move/from16 v0, p4

    if-ne v0, v3, :cond_4

    .line 1609
    const-string v3, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v4

    .line 1611
    .restart local v4       #kind:Lcom/android/contacts/model/DataKind;
    const-string v6, "phone_type0"

    const-string v7, "phone0"

    const-string v8, "data1"

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    invoke-static/range {v3 .. v8}, Lcom/android/contacts/model/EntityModifier;->parseExtras(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 1625
    .end local v4           #kind:Lcom/android/contacts/model/DataKind;
    :cond_4
    const/4 v3, 0x1

    move/from16 v0, p5

    if-le v0, v3, :cond_5

    .line 1627
    const-string v3, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v4

    .line 1629
    .restart local v4       #kind:Lcom/android/contacts/model/DataKind;
    const/4 v13, 0x0

    .restart local v13       #i:I
    :goto_2
    move/from16 v0, p5

    if-ge v13, v0, :cond_6

    .line 1631
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "secondary_phone_type"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "secondary_phone"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "data1"

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    invoke-static/range {v3 .. v8}, Lcom/android/contacts/model/EntityModifier;->parseExtras(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 1629
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 1637
    .end local v4           #kind:Lcom/android/contacts/model/DataKind;
    .end local v13           #i:I
    :cond_5
    const/4 v3, 0x1

    move/from16 v0, p5

    if-ne v0, v3, :cond_6

    .line 1639
    const-string v3, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v4

    .line 1641
    .restart local v4       #kind:Lcom/android/contacts/model/DataKind;
    const-string v6, "secondary_phone_type0"

    const-string v7, "secondary_phone0"

    const-string v8, "data1"

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    invoke-static/range {v3 .. v8}, Lcom/android/contacts/model/EntityModifier;->parseExtras(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 1653
    .end local v4           #kind:Lcom/android/contacts/model/DataKind;
    :cond_6
    const/4 v3, 0x1

    move/from16 v0, p6

    if-le v0, v3, :cond_7

    .line 1655
    const-string v3, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v4

    .line 1657
    .restart local v4       #kind:Lcom/android/contacts/model/DataKind;
    const/4 v13, 0x0

    .restart local v13       #i:I
    :goto_3
    move/from16 v0, p6

    if-ge v13, v0, :cond_8

    .line 1659
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tertiary_phone_type"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tertiary_phone"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "data1"

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    invoke-static/range {v3 .. v8}, Lcom/android/contacts/model/EntityModifier;->parseExtras(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 1657
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 1665
    .end local v4           #kind:Lcom/android/contacts/model/DataKind;
    .end local v13           #i:I
    :cond_7
    const/4 v3, 0x1

    move/from16 v0, p6

    if-ne v0, v3, :cond_8

    .line 1667
    const-string v3, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v4

    .line 1669
    .restart local v4       #kind:Lcom/android/contacts/model/DataKind;
    const-string v6, "tertiary_phone_type0"

    const-string v7, "tertiary_phone0"

    const-string v8, "data1"

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    invoke-static/range {v3 .. v8}, Lcom/android/contacts/model/EntityModifier;->parseExtras(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 1681
    .end local v4           #kind:Lcom/android/contacts/model/DataKind;
    :cond_8
    const/4 v3, 0x1

    move/from16 v0, p7

    if-le v0, v3, :cond_9

    .line 1683
    const-string v3, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v4

    .line 1685
    .restart local v4       #kind:Lcom/android/contacts/model/DataKind;
    const/4 v13, 0x0

    .restart local v13       #i:I
    :goto_4
    move/from16 v0, p7

    if-ge v13, v0, :cond_a

    .line 1687
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "email_type"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "email"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "data1"

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    invoke-static/range {v3 .. v8}, Lcom/android/contacts/model/EntityModifier;->parseExtras(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 1685
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 1693
    .end local v4           #kind:Lcom/android/contacts/model/DataKind;
    .end local v13           #i:I
    :cond_9
    const/4 v3, 0x1

    move/from16 v0, p7

    if-ne v0, v3, :cond_a

    .line 1695
    const-string v3, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v4

    .line 1697
    .restart local v4       #kind:Lcom/android/contacts/model/DataKind;
    const-string v6, "email_type0"

    const-string v7, "email0"

    const-string v8, "data1"

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    invoke-static/range {v3 .. v8}, Lcom/android/contacts/model/EntityModifier;->parseExtras(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 1709
    .end local v4           #kind:Lcom/android/contacts/model/DataKind;
    :cond_a
    const-string v3, "vnd.android.cursor.item/im"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v4

    .line 1711
    .restart local v4       #kind:Lcom/android/contacts/model/DataKind;
    invoke-static/range {p3 .. p3}, Lcom/android/contacts/model/EntityModifier;->fixupLegacyImType(Landroid/os/Bundle;)V

    .line 1713
    const-string v6, "im_protocol"

    const-string v7, "im_handle"

    const-string v8, "data1"

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    invoke-static/range {v3 .. v8}, Lcom/android/contacts/model/EntityModifier;->parseExtras(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 1721
    const-string v3, "company"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "job_title"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    :cond_b
    const/4 v12, 0x1

    .line 1725
    .local v12, hasOrg:Z
    :goto_5
    const-string v3, "vnd.android.cursor.item/organization"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v15

    .line 1727
    .local v15, kindOrg:Lcom/android/contacts/model/DataKind;
    if-eqz v12, :cond_d

    move-object/from16 v0, p2

    invoke-static {v0, v15}, Lcom/android/contacts/model/EntityModifier;->canInsert(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1729
    move-object/from16 v0, p2

    invoke-static {v0, v15}, Lcom/android/contacts/model/EntityModifier;->insertChild(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v9

    .line 1733
    const-string v3, "company"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1735
    .local v10, company:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1737
    const-string v3, "data1"

    invoke-virtual {v9, v3, v10}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1743
    :cond_c
    const-string v3, "job_title"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1745
    .local v18, title:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1747
    const-string v3, "data4"

    move-object/from16 v0, v18

    invoke-virtual {v9, v3, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1757
    .end local v10           #company:Ljava/lang/String;
    .end local v18           #title:Ljava/lang/String;
    :cond_d
    const-string v3, "notes"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    .line 1759
    .local v11, hasNotes:Z
    const-string v3, "vnd.android.cursor.item/note"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v14

    .line 1761
    .local v14, kindNotes:Lcom/android/contacts/model/DataKind;
    if-eqz v11, :cond_e

    move-object/from16 v0, p2

    invoke-static {v0, v14}, Lcom/android/contacts/model/EntityModifier;->canInsert(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1763
    move-object/from16 v0, p2

    invoke-static {v0, v14}, Lcom/android/contacts/model/EntityModifier;->insertChild(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v9

    .line 1767
    const-string v3, "notes"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1769
    .local v17, notes:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1771
    const-string v3, "data1"

    move-object/from16 v0, v17

    invoke-virtual {v9, v3, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1781
    .end local v17           #notes:Ljava/lang/String;
    :cond_e
    const-string v3, "data"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v19

    .line 1783
    .local v19, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v19, :cond_0

    .line 1785
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/android/contacts/model/EntityModifier;->parseValues(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 1721
    .end local v11           #hasNotes:Z
    .end local v12           #hasOrg:Z
    .end local v14           #kindNotes:Lcom/android/contacts/model/DataKind;
    .end local v15           #kindOrg:Lcom/android/contacts/model/DataKind;
    .end local v19           #values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_f
    const/4 v12, 0x0

    goto/16 :goto_5
.end method

.method public static parseExtrasForSIM(Landroid/content/Context;Lcom/android/contacts/model/AccountType;Lcom/android/contacts/model/EntityDelta;Landroid/os/Bundle;)V
    .locals 27
    .parameter "context"
    .parameter "accountType"
    .parameter "state"
    .parameter "extras"

    .prologue
    .line 1807
    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Bundle;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 1915
    :cond_0
    :goto_0
    return-void

    .line 1815
    :cond_1
    const/16 v25, 0x0

    .line 1817
    .local v25, overPhoneMaxLength:Z
    const/16 v24, 0x0

    .line 1823
    .local v24, overEmailMaxLength:Z
    const-string v2, "vnd.android.cursor.item/name"

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-static {v0, v1, v2}, Lcom/android/contacts/model/EntityModifier;->ensureKindExists(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 1825
    const-string v2, "vnd.android.cursor.item/name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/EntityDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v20

    .line 1829
    .local v20, child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    const-string v2, "name"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1830
    .local v23, name:Ljava/lang/String;
    const-string v2, "cnam"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v21

    .line 1831
    .local v21, isCNAM:Z
    const-string v2, "data3"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1835
    .local v22, lastName:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1836
    if-eqz v21, :cond_4

    invoke-static/range {v22 .. v22}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1837
    const-string v2, "data2"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v2, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1838
    const-string v2, "data3"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v2, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1839
    const-string v2, "data1"

    invoke-virtual/range {v20 .. v20}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/contacts/util/NameConverter;->structuredNameToDisplayName(Landroid/content/Context;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1849
    :cond_2
    :goto_1
    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v26

    .line 1851
    .local v26, simManager:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1853
    :cond_3
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/contacts/model/AccountType;->accountType:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isEmailFull(Ljava/lang/String;)Z

    move-result v18

    .line 1859
    .local v18, isEmailFull:Z
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/contacts/model/AccountType;->accountType:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getNumberLength(Ljava/lang/String;)I

    move-result v10

    .line 1861
    .local v10, numMaxLength:I
    const-string v2, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v3

    .line 1863
    .local v3, kind:Lcom/android/contacts/model/DataKind;
    const-string v5, "phone_type"

    const-string v6, "phone"

    const-string v7, "data1"

    const-string v8, "vnd.android.cursor.item/phone_v2"

    const/4 v9, 0x0

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    invoke-static/range {v2 .. v10}, Lcom/android/contacts/model/EntityModifier;->parseExtrasForSIM(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v25

    .line 1873
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/contacts/model/AccountType;->accountType:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getEmailLength(Ljava/lang/String;)I

    move-result v19

    .line 1875
    .local v19, emailMaxLength:I
    const-string v2, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v3

    .line 1877
    const-string v14, "email_type"

    const-string v15, "email"

    const-string v16, "data1"

    const-string v17, "vnd.android.cursor.item/email_v2"

    move-object/from16 v11, p2

    move-object v12, v3

    move-object/from16 v13, p3

    invoke-static/range {v11 .. v19}, Lcom/android/contacts/model/EntityModifier;->parseExtrasForSIM(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v24

    .line 1915
    goto/16 :goto_0

    .line 1841
    .end local v3           #kind:Lcom/android/contacts/model/DataKind;
    .end local v10           #numMaxLength:I
    .end local v18           #isEmailFull:Z
    .end local v19           #emailMaxLength:I
    .end local v26           #simManager:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    :cond_4
    const-string v2, "data1"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v2, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static parseExtrasForSIM(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Z
    .locals 15
    .parameter "state"
    .parameter "kind"
    .parameter "extras"
    .parameter "typeExtra"
    .parameter "valueExtra"
    .parameter "valueColumn"
    .parameter "mimeType"
    .parameter "isEmailFull"
    .parameter "maxLength"

    .prologue
    .line 2505
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v12

    .line 2507
    .local v12, value:Ljava/lang/CharSequence;
    const/4 v9, 0x0

    .line 2513
    .local v9, overMaxLength:Z
    if-nez p1, :cond_0

    const/4 v13, 0x0

    .line 2637
    :goto_0
    return v13

    .line 2519
    :cond_0
    invoke-static/range {p0 .. p1}, Lcom/android/contacts/model/EntityModifier;->canInsert(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;)Z

    move-result v2

    .line 2521
    .local v2, canInsert:Z
    if-eqz v12, :cond_2

    invoke-static {v12}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_2

    const/4 v11, 0x1

    .line 2523
    .local v11, validValue:Z
    :goto_1
    if-eqz v11, :cond_1

    if-nez v2, :cond_3

    :cond_1
    const/4 v13, 0x0

    goto :goto_0

    .line 2521
    .end local v11           #validValue:Z
    :cond_2
    const/4 v11, 0x0

    goto :goto_1

    .line 2529
    .restart local v11       #validValue:Z
    :cond_3
    invoke-virtual/range {p2 .. p3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    .line 2531
    .local v7, hasType:Z
    if-eqz v7, :cond_4

    const/4 v13, 0x0

    :goto_2
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 2537
    .local v10, typeValue:I
    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-static {p0, v0, v13, v10}, Lcom/android/contacts/model/EntityModifier;->getBestValidType(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;ZI)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    .line 2543
    .local v6, editType:Lcom/android/contacts/model/AccountType$EditType;
    const/4 v3, 0x0

    .line 2545
    .local v3, child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    move-object v8, v12

    .line 2547
    .local v8, insertValue:Ljava/lang/CharSequence;
    const-string v13, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 2549
    move-object/from16 v0, p6

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/EntityDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v3

    .line 2551
    const/4 v13, 0x1

    move/from16 v0, p7

    if-ne v0, v13, :cond_5

    if-nez v3, :cond_5

    .line 2553
    const/4 v13, 0x0

    goto :goto_0

    .line 2531
    .end local v3           #child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v6           #editType:Lcom/android/contacts/model/AccountType$EditType;
    .end local v8           #insertValue:Ljava/lang/CharSequence;
    .end local v10           #typeValue:I
    :cond_4
    const/high16 v13, -0x8000

    goto :goto_2

    .line 2557
    .restart local v3       #child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .restart local v6       #editType:Lcom/android/contacts/model/AccountType$EditType;
    .restart local v8       #insertValue:Ljava/lang/CharSequence;
    .restart local v10       #typeValue:I
    :cond_5
    if-nez p7, :cond_6

    if-nez v3, :cond_6

    .line 2559
    move-object/from16 v0, p1

    invoke-static {p0, v0, v6}, Lcom/android/contacts/model/EntityModifier;->insertChild(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/AccountType$EditType;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v3

    .line 2603
    :cond_6
    :goto_3
    if-eqz v8, :cond_c

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v13

    if-lez v13, :cond_c

    if-lez p8, :cond_c

    .line 2605
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v13

    move/from16 v0, p8

    if-le v13, v0, :cond_7

    .line 2607
    const/4 v9, 0x1

    .line 2609
    const/4 v13, 0x0

    move/from16 v0, p8

    invoke-interface {v8, v13, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    .line 2621
    :cond_7
    if-eqz v3, :cond_8

    .line 2623
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p5

    invoke-virtual {v3, v0, v13}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2625
    if-eqz v6, :cond_8

    iget-object v13, v6, Lcom/android/contacts/model/AccountType$EditType;->customColumn:Ljava/lang/String;

    if-eqz v13, :cond_8

    .line 2629
    invoke-virtual/range {p2 .. p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2631
    .local v4, customType:Ljava/lang/String;
    iget-object v13, v6, Lcom/android/contacts/model/AccountType$EditType;->customColumn:Ljava/lang/String;

    invoke-virtual {v3, v13, v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .end local v4           #customType:Ljava/lang/String;
    :cond_8
    move v13, v9

    .line 2637
    goto/16 :goto_0

    .line 2563
    :cond_9
    const-string v13, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 2567
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2569
    .local v5, dialString:Ljava/lang/String;
    if-eqz v5, :cond_a

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_a

    .line 2571
    const/4 v13, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v5, v13, v14}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    .line 2573
    move-object/from16 v0, p6

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/EntityDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v3

    .line 2575
    if-nez v3, :cond_6

    .line 2577
    move-object/from16 v0, p1

    invoke-static {p0, v0, v6}, Lcom/android/contacts/model/EntityModifier;->insertChild(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/AccountType$EditType;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v3

    goto :goto_3

    .line 2583
    :cond_a
    const/4 v8, 0x0

    goto :goto_3

    .line 2589
    .end local v5           #dialString:Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p6

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/EntityDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v3

    .line 2591
    if-nez v3, :cond_6

    .line 2593
    move-object/from16 v0, p1

    invoke-static {p0, v0, v6}, Lcom/android/contacts/model/EntityModifier;->insertChild(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/AccountType$EditType;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v3

    goto :goto_3

    .line 2615
    :cond_c
    const/4 v13, 0x0

    goto/16 :goto_0
.end method

.method public static parseExtrasForSIM2(Landroid/content/Context;Lcom/android/contacts/model/AccountType;Lcom/android/contacts/model/EntityDelta;Landroid/os/Bundle;)V
    .locals 25
    .parameter "context"
    .parameter "accountType"
    .parameter "state"
    .parameter "extras"

    .prologue
    .line 1923
    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Bundle;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 1989
    :cond_0
    :goto_0
    return-void

    .line 1931
    :cond_1
    const/16 v23, 0x0

    .line 1933
    .local v23, overPhoneMaxLength:Z
    const/16 v22, 0x0

    .line 1939
    .local v22, overEmailMaxLength:Z
    const-string v2, "vnd.android.cursor.item/name"

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-static {v0, v1, v2}, Lcom/android/contacts/model/EntityModifier;->ensureKindExists(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 1941
    const-string v2, "vnd.android.cursor.item/name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/EntityDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v20

    .line 1945
    .local v20, child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    const-string v2, "name"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1949
    .local v21, name:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1951
    const-string v2, "data1"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v2, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1959
    :cond_2
    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v24

    .line 1961
    .local v24, simManager:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    sget v2, Lcom/android/contacts/model/EntityModifier;->SIM_ONE:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isEmailFull(I)Z

    move-result v18

    .line 1967
    .local v18, isEmailFull:Z
    sget v2, Lcom/android/contacts/model/EntityModifier;->SIM_ONE:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getNumberLength(I)I

    move-result v10

    .line 1969
    .local v10, numMaxLength:I
    const-string v2, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v3

    .line 1971
    .local v3, kind:Lcom/android/contacts/model/DataKind;
    const-string v5, "phone_type"

    const-string v6, "phone"

    const-string v7, "data1"

    const-string v8, "vnd.android.cursor.item/phone_v2"

    const/4 v9, 0x0

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    invoke-static/range {v2 .. v10}, Lcom/android/contacts/model/EntityModifier;->parseExtrasForSIM(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v23

    .line 1981
    sget v2, Lcom/android/contacts/model/EntityModifier;->SIM_ONE:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getEmailLength(I)I

    move-result v19

    .line 1983
    .local v19, emailMaxLength:I
    const-string v2, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v3

    .line 1985
    const-string v14, "email_type"

    const-string v15, "email"

    const-string v16, "data1"

    const-string v17, "vnd.android.cursor.item/email_v2"

    move-object/from16 v11, p2

    move-object v12, v3

    move-object/from16 v13, p3

    invoke-static/range {v11 .. v19}, Lcom/android/contacts/model/EntityModifier;->parseExtrasForSIM(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v22

    .line 1989
    goto :goto_0
.end method

.method private static parseStructuredNameExtra(Landroid/content/Context;Lcom/android/contacts/model/AccountType;Lcom/android/contacts/model/EntityDelta;Landroid/os/Bundle;)V
    .locals 31
    .parameter "context"
    .parameter "accountType"
    .parameter "state"
    .parameter "extras"

    .prologue
    .line 1310
    const-string v2, "vnd.android.cursor.item/name"

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-static {v0, v1, v2}, Lcom/android/contacts/model/EntityModifier;->ensureKindExists(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 1312
    const-string v2, "vnd.android.cursor.item/name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/EntityDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v8

    .line 1313
    .local v8, child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    const-string v2, "data"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 1315
    .local v10, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const-string v2, "name"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1317
    .local v22, name:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1319
    const-string v2, "vnd.android.cursor.item/name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v18

    .line 1321
    .local v18, kind:Lcom/android/contacts/model/DataKind;
    const/16 v29, 0x0

    .line 1322
    .local v29, supportsDisplayName:Z
    const-string v2, "cnam"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v17

    .line 1323
    .local v17, isCNAM:Z
    const-string v2, "data3"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1327
    .local v19, lastName:Ljava/lang/String;
    if-eqz v18, :cond_1

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 1329
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/contacts/model/AccountType$EditField;

    .line 1331
    .local v13, field:Lcom/android/contacts/model/AccountType$EditField;
    const-string v2, "data1"

    iget-object v4, v13, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1333
    const/16 v29, 0x1

    .line 1345
    .end local v13           #field:Lcom/android/contacts/model/AccountType$EditField;
    .end local v16           #i$:Ljava/util/Iterator;
    :cond_1
    if-eqz v29, :cond_5

    .line 1346
    if-eqz v17, :cond_4

    invoke-static/range {v19 .. v19}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1347
    const-string v2, "data2"

    move-object/from16 v0, v22

    invoke-virtual {v8, v2, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1348
    const-string v2, "data3"

    move-object/from16 v0, v19

    invoke-virtual {v8, v2, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1349
    const-string v2, "data1"

    invoke-virtual {v8}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/contacts/util/NameConverter;->structuredNameToDisplayName(Landroid/content/Context;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v2, v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1459
    .end local v17           #isCNAM:Z
    .end local v18           #kind:Lcom/android/contacts/model/DataKind;
    .end local v19           #lastName:Ljava/lang/String;
    .end local v29           #supportsDisplayName:Z
    :cond_2
    :goto_0
    const-string v2, "phonetic_name"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 1461
    .local v26, phoneticName:Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1463
    const-string v2, "data7"

    move-object/from16 v0, v26

    invoke-virtual {v8, v2, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1493
    :cond_3
    :goto_1
    return-void

    .line 1351
    .end local v26           #phoneticName:Ljava/lang/String;
    .restart local v17       #isCNAM:Z
    .restart local v18       #kind:Lcom/android/contacts/model/DataKind;
    .restart local v19       #lastName:Ljava/lang/String;
    .restart local v29       #supportsDisplayName:Z
    :cond_4
    const-string v2, "data1"

    move-object/from16 v0, v22

    invoke-virtual {v8, v2, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1355
    :cond_5
    const/4 v3, 0x0

    .line 1356
    .local v3, uri:Landroid/net/Uri;
    if-eqz v17, :cond_7

    invoke-static/range {v19 .. v19}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1357
    sget-object v2, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v4, "complete_name"

    invoke-virtual {v2, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v4, "data2"

    move-object/from16 v0, v22

    invoke-virtual {v2, v4, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v4, "data3"

    move-object/from16 v0, v19

    invoke-virtual {v2, v4, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 1369
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "data4"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "data2"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "data5"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "data3"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "data6"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1389
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1391
    const-string v2, "data4"

    const/4 v4, 0x0

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v2, v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1393
    const-string v2, "data2"

    const/4 v4, 0x1

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v2, v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1395
    const-string v2, "data5"

    const/4 v4, 0x2

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v2, v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1397
    const-string v2, "data3"

    const/4 v4, 0x3

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v2, v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1399
    const-string v2, "data6"

    const/4 v4, 0x4

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v2, v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1405
    :cond_6
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1363
    .end local v9           #cursor:Landroid/database/Cursor;
    :cond_7
    sget-object v2, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v4, "complete_name"

    invoke-virtual {v2, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v4, "data1"

    move-object/from16 v0, v22

    invoke-virtual {v2, v4, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    goto :goto_2

    .line 1405
    .restart local v9       #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v2

    .line 1411
    .end local v3           #uri:Landroid/net/Uri;
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v17           #isCNAM:Z
    .end local v18           #kind:Lcom/android/contacts/model/DataKind;
    .end local v19           #lastName:Ljava/lang/String;
    .end local v29           #supportsDisplayName:Z
    :cond_8
    if-eqz v10, :cond_2

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 1412
    const/4 v11, 0x0

    .line 1413
    .local v11, displayName:Ljava/lang/String;
    const/16 v27, 0x0

    .line 1414
    .local v27, prefix:Ljava/lang/String;
    const/4 v14, 0x0

    .line 1415
    .local v14, givenName:Ljava/lang/String;
    const/16 v20, 0x0

    .line 1416
    .local v20, middleName:Ljava/lang/String;
    const/4 v12, 0x0

    .line 1417
    .local v12, familyName:Ljava/lang/String;
    const/16 v28, 0x0

    .line 1419
    .local v28, suffix:Ljava/lang/String;
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16       #i$:Ljava/util/Iterator;
    :cond_9
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/content/ContentValues;

    .line 1420
    .local v30, values:Landroid/content/ContentValues;
    const-string v2, "mimetype"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1421
    .local v21, mimeType:Ljava/lang/String;
    const-string v2, "vnd.android.cursor.item/name"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1422
    const-string v2, "data1"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1423
    const-string v2, "data4"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 1424
    const-string v2, "data2"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1425
    const-string v2, "data5"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1426
    const-string v2, "data3"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1427
    const-string v2, "data6"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1432
    .end local v21           #mimeType:Ljava/lang/String;
    .end local v30           #values:Landroid/content/ContentValues;
    :cond_a
    invoke-static {v11}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1433
    const/16 v29, 0x0

    .line 1435
    .restart local v29       #supportsDisplayName:Z
    const-string v2, "vnd.android.cursor.item/name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v18

    .line 1437
    .restart local v18       #kind:Lcom/android/contacts/model/DataKind;
    if-eqz v18, :cond_c

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    if-eqz v2, :cond_c

    .line 1438
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_b
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/contacts/model/AccountType$EditField;

    .line 1439
    .restart local v13       #field:Lcom/android/contacts/model/AccountType$EditField;
    const-string v2, "data1"

    iget-object v4, v13, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1440
    const/16 v29, 0x1

    .line 1446
    .end local v13           #field:Lcom/android/contacts/model/AccountType$EditField;
    :cond_c
    if-eqz v29, :cond_d

    .line 1447
    const-string v2, "data1"

    invoke-virtual {v8, v2, v11}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1449
    :cond_d
    const-string v2, "data4"

    invoke-static/range {v27 .. v27}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_e

    .end local v27           #prefix:Ljava/lang/String;
    :goto_3
    move-object/from16 v0, v27

    invoke-virtual {v8, v2, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1450
    const-string v2, "data2"

    invoke-static {v14}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_f

    .end local v14           #givenName:Ljava/lang/String;
    :goto_4
    invoke-virtual {v8, v2, v14}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1451
    const-string v2, "data5"

    invoke-static/range {v20 .. v20}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_10

    .end local v20           #middleName:Ljava/lang/String;
    :goto_5
    move-object/from16 v0, v20

    invoke-virtual {v8, v2, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1452
    const-string v2, "data3"

    invoke-static {v12}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_11

    .end local v12           #familyName:Ljava/lang/String;
    :goto_6
    invoke-virtual {v8, v2, v12}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1453
    const-string v2, "data6"

    invoke-static/range {v28 .. v28}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_12

    .end local v28           #suffix:Ljava/lang/String;
    :goto_7
    move-object/from16 v0, v28

    invoke-virtual {v8, v2, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1449
    .restart local v12       #familyName:Ljava/lang/String;
    .restart local v14       #givenName:Ljava/lang/String;
    .restart local v20       #middleName:Ljava/lang/String;
    .restart local v27       #prefix:Ljava/lang/String;
    .restart local v28       #suffix:Ljava/lang/String;
    :cond_e
    const/16 v27, 0x0

    goto :goto_3

    .line 1450
    .end local v27           #prefix:Ljava/lang/String;
    :cond_f
    const/4 v14, 0x0

    goto :goto_4

    .line 1451
    .end local v14           #givenName:Ljava/lang/String;
    :cond_10
    const/16 v20, 0x0

    goto :goto_5

    .line 1452
    .end local v20           #middleName:Ljava/lang/String;
    :cond_11
    const/4 v12, 0x0

    goto :goto_6

    .line 1453
    .end local v12           #familyName:Ljava/lang/String;
    :cond_12
    const/16 v28, 0x0

    goto :goto_7

    .line 1465
    .end local v11           #displayName:Ljava/lang/String;
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v18           #kind:Lcom/android/contacts/model/DataKind;
    .end local v28           #suffix:Ljava/lang/String;
    .end local v29           #supportsDisplayName:Z
    .restart local v26       #phoneticName:Ljava/lang/String;
    :cond_13
    if-eqz v10, :cond_3

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 1466
    const/4 v15, 0x0

    .line 1467
    .local v15, hasPhoneticName:Z
    const/16 v24, 0x0

    .line 1468
    .local v24, phoneticGivenName:Ljava/lang/String;
    const/16 v25, 0x0

    .line 1469
    .local v25, phoneticMiddleName:Ljava/lang/String;
    const/16 v23, 0x0

    .line 1471
    .local v23, phoneticFamilyName:Ljava/lang/String;
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16       #i$:Ljava/util/Iterator;
    :cond_14
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/content/ContentValues;

    .line 1472
    .restart local v30       #values:Landroid/content/ContentValues;
    const-string v2, "mimetype"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1473
    .restart local v21       #mimeType:Ljava/lang/String;
    const-string v2, "vnd.android.cursor.item/name"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1474
    const-string v2, "data7"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 1475
    const-string v2, "data8"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1476
    const-string v2, "data9"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1477
    invoke-static/range {v24 .. v24}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_15

    invoke-static/range {v25 .. v25}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_15

    invoke-static/range {v23 .. v23}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1480
    :cond_15
    const/4 v15, 0x1

    .line 1486
    .end local v21           #mimeType:Ljava/lang/String;
    .end local v30           #values:Landroid/content/ContentValues;
    :cond_16
    if-eqz v15, :cond_3

    .line 1487
    const-string v2, "data7"

    invoke-static/range {v24 .. v24}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_17

    .end local v24           #phoneticGivenName:Ljava/lang/String;
    :goto_8
    move-object/from16 v0, v24

    invoke-virtual {v8, v2, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1488
    const-string v2, "data8"

    invoke-static/range {v25 .. v25}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_18

    .end local v25           #phoneticMiddleName:Ljava/lang/String;
    :goto_9
    move-object/from16 v0, v25

    invoke-virtual {v8, v2, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1489
    const-string v2, "data9"

    invoke-static/range {v23 .. v23}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_19

    .end local v23           #phoneticFamilyName:Ljava/lang/String;
    :goto_a
    move-object/from16 v0, v23

    invoke-virtual {v8, v2, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1487
    .restart local v23       #phoneticFamilyName:Ljava/lang/String;
    .restart local v24       #phoneticGivenName:Ljava/lang/String;
    .restart local v25       #phoneticMiddleName:Ljava/lang/String;
    :cond_17
    const/16 v24, 0x0

    goto :goto_8

    .line 1488
    .end local v24           #phoneticGivenName:Ljava/lang/String;
    :cond_18
    const/16 v25, 0x0

    goto :goto_9

    .line 1489
    .end local v25           #phoneticMiddleName:Ljava/lang/String;
    :cond_19
    const/16 v23, 0x0

    goto :goto_a
.end method

.method private static parseStructuredPostalExtra(Lcom/android/contacts/model/AccountType;Lcom/android/contacts/model/EntityDelta;Landroid/os/Bundle;)V
    .locals 12
    .parameter "accountType"
    .parameter "state"
    .parameter "extras"

    .prologue
    .line 1503
    const-string v0, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v1

    .line 1505
    .local v1, kind:Lcom/android/contacts/model/DataKind;
    const-string v3, "postal_type"

    const-string v4, "postal"

    const-string v5, "data1"

    move-object v0, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/android/contacts/model/EntityModifier;->parseExtras(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v7

    .line 1509
    .local v7, child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    if-nez v7, :cond_3

    const/4 v6, 0x0

    .line 1513
    .local v6, address:Ljava/lang/String;
    :goto_0
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1515
    const/4 v11, 0x0

    .line 1517
    .local v11, supportsFormatted:Z
    iget-object v0, v1, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 1519
    iget-object v0, v1, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/model/AccountType$EditField;

    .line 1521
    .local v8, field:Lcom/android/contacts/model/AccountType$EditField;
    const-string v0, "data1"

    iget-object v2, v8, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1523
    const/4 v11, 0x1

    .line 1535
    .end local v8           #field:Lcom/android/contacts/model/AccountType$EditField;
    .end local v9           #i$:Ljava/util/Iterator;
    :cond_1
    if-nez v11, :cond_2

    .line 1536
    const-string v0, "cnam"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 1537
    .local v10, isCNAM:Z
    if-eqz v10, :cond_4

    .line 1538
    const-string v0, "data7"

    invoke-virtual {v7, v0, v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1542
    :goto_1
    const-string v0, "data1"

    invoke-virtual {v7, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->putNull(Ljava/lang/String;)V

    .line 1547
    .end local v10           #isCNAM:Z
    .end local v11           #supportsFormatted:Z
    :cond_2
    return-void

    .line 1509
    .end local v6           #address:Ljava/lang/String;
    :cond_3
    const-string v0, "data1"

    invoke-virtual {v7, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 1540
    .restart local v6       #address:Ljava/lang/String;
    .restart local v10       #isCNAM:Z
    .restart local v11       #supportsFormatted:Z
    :cond_4
    const-string v0, "data4"

    invoke-virtual {v7, v0, v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static parseValues(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Ljava/util/ArrayList;)V
    .locals 13
    .parameter "state"
    .parameter "accountType"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/model/EntityDelta;",
            "Lcom/android/contacts/model/AccountType;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1997
    .local p2, dataValueList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_11

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ContentValues;

    .line 1999
    .local v9, values:Landroid/content/ContentValues;
    const-string v10, "mimetype"

    invoke-virtual {v9, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2001
    .local v8, mimeType:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 2003
    const-string v10, "EntityModifier"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Mimetype is required. Ignoring: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2013
    :cond_1
    const-string v10, "vnd.android.cursor.item/name"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 2021
    invoke-virtual {p1, v8}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v7

    .line 2023
    .local v7, kind:Lcom/android/contacts/model/DataKind;
    if-nez v7, :cond_2

    .line 2025
    const-string v10, "EntityModifier"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Mimetype not supported for account type "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Lcom/android/contacts/model/AccountType;->getAccountTypeAndDataSet()Lcom/android/contacts/model/AccountTypeWithDataSet;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ". Ignoring: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2035
    :cond_2
    invoke-static {v9}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v4

    .line 2037
    .local v4, entry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-static {v4, v7}, Lcom/android/contacts/model/EntityModifier;->isEmpty(Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/DataKind;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 2045
    invoke-virtual {p0, v8}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 2049
    .local v3, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    iget-boolean v10, v7, Lcom/android/contacts/model/DataKind;->isList:Z

    if-nez v10, :cond_3

    const-string v10, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 2053
    :cond_3
    const/4 v0, 0x1

    .line 2055
    .local v0, addEntry:Z
    const/4 v1, 0x0

    .line 2057
    .local v1, count:I
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_5

    .line 2059
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 2061
    .local v2, delta:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isDelete()Z

    move-result v10

    if-nez v10, :cond_4

    .line 2063
    invoke-static {v2, v9, v7}, Lcom/android/contacts/model/EntityModifier;->areEqual(Lcom/android/contacts/model/EntityDelta$ValuesDelta;Landroid/content/ContentValues;Lcom/android/contacts/model/DataKind;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 2065
    const/4 v0, 0x0

    .line 2081
    .end local v2           #delta:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v6           #i$:Ljava/util/Iterator;
    :cond_5
    iget v10, v7, Lcom/android/contacts/model/DataKind;->typeOverallMax:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_6

    iget v10, v7, Lcom/android/contacts/model/DataKind;->typeOverallMax:I

    if-lt v1, v10, :cond_6

    .line 2083
    const-string v10, "EntityModifier"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Mimetype allows at most "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v7, Lcom/android/contacts/model/DataKind;->typeOverallMax:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " entries. Ignoring: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 2087
    const/4 v0, 0x0

    .line 2093
    :cond_6
    if-eqz v0, :cond_7

    .line 2095
    invoke-static {v4, v3, v7}, Lcom/android/contacts/model/EntityModifier;->adjustType(Lcom/android/contacts/model/EntityDelta$ValuesDelta;Ljava/util/ArrayList;Lcom/android/contacts/model/DataKind;)Z

    move-result v0

    .line 2101
    :cond_7
    if-eqz v0, :cond_0

    .line 2103
    invoke-virtual {p0, v4}, Lcom/android/contacts/model/EntityDelta;->addEntry(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    goto/16 :goto_0

    .line 2071
    .restart local v2       #delta:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2111
    .end local v0           #addEntry:Z
    .end local v1           #count:I
    .end local v2           #delta:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v6           #i$:Ljava/util/Iterator;
    :cond_9
    const/4 v0, 0x1

    .line 2113
    .restart local v0       #addEntry:Z
    if-eqz v3, :cond_c

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_c

    .line 2115
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 2117
    .restart local v2       #delta:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isDelete()Z

    move-result v10

    if-nez v10, :cond_a

    invoke-static {v2, v7}, Lcom/android/contacts/model/EntityModifier;->isEmpty(Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/DataKind;)Z

    move-result v10

    if-nez v10, :cond_a

    .line 2119
    const/4 v0, 0x0

    .line 2127
    .end local v2           #delta:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_b
    if-eqz v0, :cond_c

    .line 2129
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 2131
    .restart local v2       #delta:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->markDeleted()V

    goto :goto_2

    .line 2141
    .end local v2           #delta:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v6           #i$:Ljava/util/Iterator;
    :cond_c
    if-eqz v0, :cond_d

    .line 2143
    invoke-static {v4, v3, v7}, Lcom/android/contacts/model/EntityModifier;->adjustType(Lcom/android/contacts/model/EntityDelta$ValuesDelta;Ljava/util/ArrayList;Lcom/android/contacts/model/DataKind;)Z

    move-result v0

    .line 2149
    :cond_d
    if-eqz v0, :cond_e

    .line 2151
    invoke-virtual {p0, v4}, Lcom/android/contacts/model/EntityDelta;->addEntry(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    goto/16 :goto_0

    .line 2153
    :cond_e
    const-string v10, "vnd.android.cursor.item/note"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 2159
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 2161
    .restart local v2       #delta:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-static {v2, v7}, Lcom/android/contacts/model/EntityModifier;->isEmpty(Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/DataKind;)Z

    move-result v10

    if-nez v10, :cond_f

    .line 2163
    const-string v10, "data1"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "data1"

    invoke-virtual {v2, v12}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "data1"

    invoke-virtual {v9, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2175
    .end local v2           #delta:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v6           #i$:Ljava/util/Iterator;
    :cond_10
    const-string v10, "EntityModifier"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Will not override mimetype "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ". Ignoring: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2185
    .end local v0           #addEntry:Z
    .end local v3           #entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    .end local v4           #entry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v7           #kind:Lcom/android/contacts/model/DataKind;
    .end local v8           #mimeType:Ljava/lang/String;
    .end local v9           #values:Landroid/content/ContentValues;
    :cond_11
    return-void
.end method

.method public static trimEmpty(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;)V
    .locals 14
    .parameter "state"
    .parameter "accountType"

    .prologue
    .line 942
    const/4 v2, 0x0

    .line 948
    .local v2, hasValues:Z
    invoke-virtual {p1}, Lcom/android/contacts/model/AccountType;->getSortedDataKinds()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/model/DataKind;

    .line 950
    .local v8, kind:Lcom/android/contacts/model/DataKind;
    iget-object v9, v8, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    .line 952
    .local v9, mimeType:Ljava/lang/String;
    invoke-virtual {p0, v9}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 954
    .local v0, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    if-eqz v0, :cond_0

    .line 958
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 962
    .local v1, entry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isInsert()Z

    move-result v11

    if-nez v11, :cond_2

    invoke-virtual {v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isUpdate()Z

    move-result v11

    if-eqz v11, :cond_3

    :cond_2
    const/4 v10, 0x1

    .line 964
    .local v10, touched:Z
    :goto_1
    if-nez v10, :cond_4

    .line 966
    const/4 v2, 0x1

    .line 968
    goto :goto_0

    .line 962
    .end local v10           #touched:Z
    :cond_3
    const/4 v10, 0x0

    goto :goto_1

    .line 976
    .restart local v10       #touched:Z
    :cond_4
    const-string v11, "com.google"

    invoke-virtual {p0}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v12

    const-string v13, "account_type"

    invoke-virtual {v12, v13}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    .line 980
    .local v5, isGoogleAccount:Z
    const-string v11, "vnd.android.cursor.item/photo"

    iget-object v12, v8, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-static {v11, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    .line 982
    .local v7, isPhoto:Z
    if-eqz v7, :cond_5

    if-eqz v5, :cond_5

    const/4 v6, 0x1

    .line 986
    .local v6, isGooglePhoto:Z
    :goto_2
    invoke-static {v1, v8}, Lcom/android/contacts/model/EntityModifier;->isEmpty(Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/DataKind;)Z

    move-result v11

    if-eqz v11, :cond_6

    if-nez v6, :cond_6

    .line 994
    invoke-virtual {v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->markDeleted()V

    goto :goto_0

    .line 982
    .end local v6           #isGooglePhoto:Z
    :cond_5
    const/4 v6, 0x0

    goto :goto_2

    .line 996
    .restart local v6       #isGooglePhoto:Z
    :cond_6
    invoke-virtual {v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isFromTemplate()Z

    move-result v11

    if-nez v11, :cond_1

    .line 998
    const/4 v2, 0x1

    goto :goto_0

    .line 1006
    .end local v0           #entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    .end local v1           #entry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #isGoogleAccount:Z
    .end local v6           #isGooglePhoto:Z
    .end local v7           #isPhoto:Z
    .end local v8           #kind:Lcom/android/contacts/model/DataKind;
    .end local v9           #mimeType:Ljava/lang/String;
    .end local v10           #touched:Z
    :cond_7
    if-nez v2, :cond_8

    .line 1010
    invoke-virtual {p0}, Lcom/android/contacts/model/EntityDelta;->markDeleted()V

    .line 1014
    :cond_8
    return-void
.end method

.method public static trimEmpty(Lcom/android/contacts/model/EntityDeltaList;Lcom/android/contacts/model/AccountTypeManager;)V
    .locals 7
    .parameter "set"
    .parameter "accountTypes"

    .prologue
    .line 876
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/EntityDelta;

    .line 878
    .local v3, state:Lcom/android/contacts/model/EntityDelta;
    invoke-virtual {v3}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v5

    .line 880
    .local v5, values:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    const-string v6, "account_type"

    invoke-virtual {v5, v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 882
    .local v0, accountType:Ljava/lang/String;
    const-string v6, "data_set"

    invoke-virtual {v5, v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 884
    .local v1, dataSet:Ljava/lang/String;
    invoke-virtual {p1, v0, v1}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v4

    .line 886
    .local v4, type:Lcom/android/contacts/model/AccountType;
    invoke-static {v3, v4}, Lcom/android/contacts/model/EntityModifier;->trimEmpty(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;)V

    goto :goto_0

    .line 890
    .end local v0           #accountType:Ljava/lang/String;
    .end local v1           #dataSet:Ljava/lang/String;
    .end local v3           #state:Lcom/android/contacts/model/EntityDelta;
    .end local v4           #type:Lcom/android/contacts/model/AccountType;
    .end local v5           #values:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_0
    return-void
.end method
