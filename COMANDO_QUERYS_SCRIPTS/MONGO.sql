db.getCollectionNames().forEach(function(collection) {
    const indexes = db[collection].getIndexes();
    const exists = indexes.some(function(index) {
        return JSON.stringify(index.key) === JSON.stringify({ LOGPKYXX: 1 });
    });

    if (!exists) {
        print("Creando índice en colección:", collection);
        db[collection].createIndex({ LOGPKYXX: 1 });
    } else {
        print("Índice ya existe en colección:", collection);
    }
});





db.getCollectionNames().forEach(function(collectionName) {
  var indexes = db.getCollection(collectionName).getIndexes();
  // Buscar si ya existe un índice con esas keys
  var indexExists = indexes.some(function(idx) {
    return idx.key.LOGACCXX === 1 && idx.key.LOGPKYXX === 1 && idx.key.REGESTAMP === 1;
  });

  if (!indexExists) {
    print("Creando índice en colección: " + collectionName);
    db.getCollection(collectionName).createIndex({
      LOGACCXX: 1,
      LOGPKYXX: 1,
      REGESTAMP: 1
    });
  } else {
    print("Índice ya existe en colección: " + collectionName);
  }
});



db.adminCommand({ listDatabases: 1 })

db.getSiblingDB("NOMBRE_DB").dropDatabase()
