.class public Lcom/android/mms/data/ContactList;
.super Ljava/util/ArrayList;
.source "ContactList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/mms/data/Contact;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/ContactList"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public specialCharArray:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "-"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "("

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, ")"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/mms/data/ContactList;->specialCharArray:[Ljava/lang/String;

    return-void
.end method

.method public static getByIds(Ljava/lang/String;Z)Lcom/android/mms/data/ContactList;
    .locals 6
    .parameter "spaceSepIds"
    .parameter "canBlock"

    .prologue
    .line 85
    new-instance v3, Lcom/android/mms/data/ContactList;

    invoke-direct {v3}, Lcom/android/mms/data/ContactList;-><init>()V

    .line 86
    .local v3, list:Lcom/android/mms/data/ContactList;
    invoke-static {p0}, Lcom/android/mms/data/RecipientIdCache;->getAddresses(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/RecipientIdCache$Entry;

    .line 87
    .local v1, entry:Lcom/android/mms/data/RecipientIdCache$Entry;
    if-eqz v1, :cond_0

    iget-object v4, v1, Lcom/android/mms/data/RecipientIdCache$Entry;->number:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 88
    iget-object v4, v1, Lcom/android/mms/data/RecipientIdCache$Entry;->number:Ljava/lang/String;

    invoke-static {v4, p1}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    .line 89
    .local v0, contact:Lcom/android/mms/data/Contact;
    iget-wide v4, v1, Lcom/android/mms/data/RecipientIdCache$Entry;->id:J

    invoke-virtual {v0, v4, v5}, Lcom/android/mms/data/Contact;->setRecipientId(J)V

    .line 90
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 93
    .end local v0           #contact:Lcom/android/mms/data/Contact;
    .end local v1           #entry:Lcom/android/mms/data/RecipientIdCache$Entry;
    :cond_1
    return-object v3
.end method

.method public static getByNumbers(Ljava/lang/Iterable;Z)Lcom/android/mms/data/ContactList;
    .locals 4
    .parameter
    .parameter "canBlock"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/android/mms/data/ContactList;"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, numbers:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    new-instance v1, Lcom/android/mms/data/ContactList;

    invoke-direct {v1}, Lcom/android/mms/data/ContactList;-><init>()V

    .line 37
    .local v1, list:Lcom/android/mms/data/ContactList;
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 38
    .local v2, number:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 39
    invoke-static {v2, p1}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 42
    .end local v2           #number:Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method public static getByNumbers(Ljava/lang/String;ZZ)Lcom/android/mms/data/ContactList;
    .locals 10
    .parameter "semiSepNumbers"
    .parameter "canBlock"
    .parameter "replaceNumber"

    .prologue
    const/16 v9, 0x3b

    .line 47
    const-string v6, "Mms/ContactList"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getByNumbers(),semiSepNumbers=="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",canBlock="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",replaceNumber="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    new-instance v4, Lcom/android/mms/data/ContactList;

    invoke-direct {v4}, Lcom/android/mms/data/ContactList;-><init>()V

    .line 52
    .local v4, list:Lcom/android/mms/data/ContactList;
    invoke-virtual {p0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v7, -0x1

    if-le v6, v7, :cond_0

    .line 53
    const/16 v6, 0x2c

    invoke-virtual {p0, v9, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 57
    :cond_0
    const-string v6, ","

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_5

    aget-object v5, v0, v2

    .line 58
    .local v5, number:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 62
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 57
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 65
    :cond_2
    invoke-static {v5}, Lcom/android/mms/ui/MessageUtils;->isValidMmsAddress(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {v5}, Lcom/android/mms/ui/MessageUtils;->isCBMessageAddress(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/mms/ui/MessageUtils;->isValidSmsEmailAddress(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {v5}, Lcom/android/mms/ui/MessageUtils;->isWapPushMessageAddress(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 67
    :cond_3
    invoke-static {v5, p1}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    .line 68
    .local v1, contact:Lcom/android/mms/data/Contact;
    if-eqz p2, :cond_4

    .line 69
    invoke-virtual {v1, v5}, Lcom/android/mms/data/Contact;->setNumber(Ljava/lang/String;)V

    .line 71
    :cond_4
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 74
    .end local v1           #contact:Lcom/android/mms/data/Contact;
    .end local v5           #number:Ljava/lang/String;
    :cond_5
    return-object v4
.end method


# virtual methods
.method public containsAlias()Z
    .locals 3

    .prologue
    .line 169
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 170
    .local v0, c:Lcom/android/mms/data/Contact;
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->isAlias()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 171
    const/4 v2, 0x1

    .line 174
    .end local v0           #c:Lcom/android/mms/data/Contact;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public containsEmail()Z
    .locals 3

    .prologue
    .line 160
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 161
    .local v0, c:Lcom/android/mms/data/Contact;
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->isEmail()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 162
    const/4 v2, 0x1

    .line 165
    .end local v0           #c:Lcom/android/mms/data/Contact;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .parameter "obj"

    .prologue
    const/4 v5, 0x0

    .line 226
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/android/mms/data/ContactList;

    move-object v4, v0

    .line 229
    .local v4, other:Lcom/android/mms/data/ContactList;
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-eq v6, v7, :cond_0

    .line 242
    .end local v4           #other:Lcom/android/mms/data/ContactList;
    :goto_0
    return v5

    .line 234
    .restart local v4       #other:Lcom/android/mms/data/ContactList;
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    .line 235
    .local v1, c:Lcom/android/mms/data/Contact;
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_1

    goto :goto_0

    .line 240
    .end local v1           #c:Lcom/android/mms/data/Contact;
    :cond_2
    const/4 v5, 0x1

    goto :goto_0

    .line 241
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #other:Lcom/android/mms/data/ContactList;
    :catch_0
    move-exception v2

    .line 242
    .local v2, e:Ljava/lang/ClassCastException;
    goto :goto_0
.end method

.method public formatNames(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "separator"

    .prologue
    .line 105
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v5, v6, [Ljava/lang/String;

    .line 106
    .local v5, names:[Ljava/lang/String;
    const/4 v2, 0x0

    .line 107
    .local v2, i:I
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 109
    .local v0, c:Lcom/android/mms/data/Contact;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableGroupMessage()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 110
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    .line 111
    .local v1, c1:Lcom/android/mms/data/Contact;
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .local v3, i:I
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    move v2, v3

    .line 112
    .end local v3           #i:I
    .restart local v2       #i:I
    goto :goto_0

    .line 115
    .end local v1           #c1:Lcom/android/mms/data/Contact;
    :cond_0
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .restart local v3       #i:I
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    move v2, v3

    .end local v3           #i:I
    .restart local v2       #i:I
    goto :goto_0

    .line 118
    .end local v0           #c:Lcom/android/mms/data/Contact;
    :cond_1
    invoke-static {p1, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public formatNamesAndNumbers(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "separator"

    .prologue
    .line 142
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v4, v5, [Ljava/lang/String;

    .line 143
    .local v4, nans:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 144
    .local v1, i:I
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 145
    .local v0, c:Lcom/android/mms/data/Contact;
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNameAndNumber()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_0

    .line 147
    .end local v0           #c:Lcom/android/mms/data/Contact;
    :cond_0
    invoke-static {p1, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public formatNumbers(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "separator"

    .prologue
    .line 122
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v4, v5, [Ljava/lang/String;

    .line 123
    .local v4, numbers:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 124
    .local v1, i:I
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 125
    .local v0, c:Lcom/android/mms/data/Contact;
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_0

    .line 127
    .end local v0           #c:Lcom/android/mms/data/Contact;
    :cond_0
    invoke-static {p1, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public formattedNames(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "separator"

    .prologue
    .line 133
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v4, v5, [Ljava/lang/String;

    .line 134
    .local v4, names:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 135
    .local v1, i:I
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 136
    .local v0, c:Lcom/android/mms/data/Contact;
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getFormattedName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_0

    .line 138
    .end local v0           #c:Lcom/android/mms/data/Contact;
    :cond_0
    invoke-static {p1, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public getNumbers()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mms/data/ContactList;->getNumbers(Z)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumbers(Z)[Ljava/lang/String;
    .locals 5
    .parameter "scrubForMmsAddress"

    .prologue
    .line 191
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 193
    .local v3, numbers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 194
    .local v0, c:Lcom/android/mms/data/Contact;
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v2

    .line 196
    .local v2, number:Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 201
    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->parseMmsAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 208
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 209
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 212
    .end local v0           #c:Lcom/android/mms/data/Contact;
    .end local v2           #number:Ljava/lang/String;
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    return-object v4
.end method

.method public getPresenceResId()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 98
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 101
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getPresenceResId()I

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 248
    const/4 v0, 0x1

    .line 249
    .local v0, hashCode:I
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 251
    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/mms/data/Contact;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 252
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 253
    .local v2, obj:Ljava/lang/Object;
    mul-int/lit8 v4, v0, 0x1f

    if-nez v2, :cond_0

    const/4 v3, 0x0

    :goto_1
    add-int v0, v4, v3

    .line 254
    goto :goto_0

    .line 253
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_1

    .line 255
    .end local v2           #obj:Ljava/lang/Object;
    :cond_1
    return v0
.end method

.method public isPhoneNumber()Z
    .locals 3

    .prologue
    .line 178
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 179
    .local v0, c:Lcom/android/mms/data/Contact;
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->isPhoneNumber()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 180
    const/4 v2, 0x1

    .line 183
    .end local v0           #c:Lcom/android/mms/data/Contact;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public reloadContactList()V
    .locals 4

    .prologue
    .line 216
    const-string v2, "Mms/ContactList"

    const-string v3, "reloadContactList()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 219
    .local v0, c:Lcom/android/mms/data/Contact;
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->reload()V

    goto :goto_0

    .line 221
    .end local v0           #c:Lcom/android/mms/data/Contact;
    :cond_0
    return-void
.end method

.method public serialize()Ljava/lang/String;
    .locals 2

    .prologue
    .line 151
    const-string v0, ";"

    invoke-virtual {p0}, Lcom/android/mms/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public serializeForSaveInstance()Ljava/lang/String;
    .locals 2

    .prologue
    .line 156
    const-string v0, ","

    invoke-virtual {p0}, Lcom/android/mms/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
