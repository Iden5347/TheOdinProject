const findTheOldest = function(people) {
    const sorted = people.sort(function(a, b) {
        let a_death = a.yearOfDeath;
        let b_death = b.yearOfDeath;
        if (b.yearOfDeath == null) {
            a_death = 2022;
        }
        if (b.yearOfDeath == null) {
            b_death = 2022;
        }
        if((a_death - a.yearOfBirth) < (b_death - b.yearOfBirth)) {
          return 1;
        } else {
          return -1;
        }
    })

    return sorted[0];
};
const people = [
    {
      name: "Carly",
      yearOfBirth: 1066,
    },
    {
      name: "Ray",
      yearOfBirth: 1962,
      yearOfDeath: 2011,
    },
    {
      name: "Jane",
      yearOfBirth: 1912,
      yearOfDeath: 1941,
    },
  ]
  console.log(findTheOldest(people).name);
// Do not edit below this line
module.exports = findTheOldest;
