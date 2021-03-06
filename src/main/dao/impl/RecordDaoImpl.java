package main.dao.impl;


import main.dao.generic.RecordDao;
import main.entity.Record;
import main.entity.User;
import org.apache.commons.lang3.ObjectUtils;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDate;
import java.time.temporal.ChronoUnit;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Transactional
@Repository
public class RecordDaoImpl extends GenericDaoImpl<Record, Long, ObjectUtils.Null>
        implements RecordDao {

    public RecordDaoImpl() {
        super(Record.class);
    }

    @Override
    public Map<Record, Integer> getActiveRecords(Long userId) {
        Map<Record, Integer> map = new HashMap<>();
        LocalDate now = LocalDate.now();

        List<Record> allRecords = getAllElements();

        for (Record record : allRecords) {
            if (record.getReturned() == null && record.getUser().getId() == userId) {
                LocalDate taken = record.getTaken();
                int daysOnHands = (int) Math.abs(ChronoUnit.DAYS.between(now, taken));
                map.put(record, daysOnHands);
            }
        }
        return map;
    }

    @Override
    public List<Record> getActiveRecords() {
        List<Record> allRecords = getAllElements();
        List<Record> activeRecords = new ArrayList<>();

        for (Record record : allRecords) {
            if (record.getReturned() == null) {
                activeRecords.add(record);
            }
        }
        return activeRecords;

    }

    @Override
    public List<Record> getHistoryOfRecords(Long userId) {
        List<Record> allRecords = getAllElements();
        List<Record> unactiveRecords = new ArrayList<>();

        for (Record record : allRecords) {
            if (record.getReturned() != null) {
                unactiveRecords.add(record);
            }
        }
        return unactiveRecords;

    }

    @Override
    public List<User> getDebtors(int period) {
        LocalDate now = LocalDate.now();

        List<Record> activeRecords = getAllElements("returned", null);

        if (activeRecords == null) {
            return null;
        }
        List<Record> debtRecords = null;

        for (Record record : activeRecords) {
            LocalDate taken = record.getTaken();
            long between = Math.abs(ChronoUnit.DAYS.between(now, taken));
            if (between > period) {
                debtRecords.add(record);
            }
        }

        if (debtRecords == null) {
            return null;
        }

        List<User> debtors = null;

        for (Record debtRecord : debtRecords) {
            User user = debtRecord.getUser();
            debtors.add(user);
        }

        if (debtors == null) {
            return null;
        }

        return debtors;
    }

    @Override
    public int getAvgAgeOfReaders(long authorId) {
        List<Record> records = getAllElements();

        return 0;
    }
}
